import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';
import 'package:vibration/vibration_presets.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ClckMobileApp());
}

class ClckMobileApp extends StatelessWidget {
  const ClckMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rehab Timer',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1E1E1E),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF00FFFF),
          secondary: Color(0xFFFFFF66),
          surface: Color(0xFF292929),
        ),
        fontFamily: 'MPlusRounded',
        fontFamilyFallback: const [
          'SF Pro Rounded',
          'Arial Rounded MT Bold',
          'sans-serif',
        ],
        useMaterial3: true,
      ),
      home: const TimerHomePage(),
    );
  }
}

class TimerHomePage extends StatefulWidget {
  const TimerHomePage({super.key});

  @override
  State<TimerHomePage> createState() => _TimerHomePageState();
}

class _TimerHomePageState extends State<TimerHomePage>
    with WidgetsBindingObserver {
  static const Color backgroundColor = Color(0xFF1E1E1E);
  static const Color cyanColor = Color(0xFF00FFFF);
  static const Color yellowColor = Color(0xFFFFFF66);
  static const Color redColor = Color(0xFFFF3333);
  static const Color greenColor = Color(0xFF33FF66);
  static const Color orangeColor = Color(0xFFFFB347);

  static const int _factoryDefaultHours = 0;
  static const int _factoryDefaultMinutes = 0;
  static const int _factoryDefaultSeconds = 20;
  static const int _factoryDefaultTargetSets = 5;
  static const String _defaultHoursKey = 'default_hours';
  static const String _defaultMinutesKey = 'default_minutes';
  static const String _defaultSecondsKey = 'default_seconds';
  static const String _defaultTargetSetsKey = 'default_target_sets';
  static const String _soundEnabledKey = 'sound_enabled';
  static const String _vibrationEnabledKey = 'vibration_enabled';

  final SharedPreferencesAsync _preferences = SharedPreferencesAsync();
  final AudioPlayer _completionPlayer = AudioPlayer();

  final TextEditingController _hoursController =
      TextEditingController(text: '0');
  final TextEditingController _minutesController =
      TextEditingController(text: '0');
  final TextEditingController _secondsController =
      TextEditingController(text: '20');
  final TextEditingController _targetSetsController =
      TextEditingController(text: '5');

  Timer? _ticker;
  DateTime _now = DateTime.now();
  DateTime? _finishAt;

  Duration _remaining = Duration.zero;
  bool _running = false;
  int _completedSets = 0;
  bool _completionDialogOpen = false;
  int _defaultHours = _factoryDefaultHours;
  int _defaultMinutes = _factoryDefaultMinutes;
  int _defaultSeconds = _factoryDefaultSeconds;
  int _defaultTargetSets = _factoryDefaultTargetSets;
  bool _soundEnabled = true;
  bool _vibrationEnabled = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadDefaultSettings();

    _ticker = Timer.periodic(
      const Duration(milliseconds: 200),
      (_) => _onTick(),
    );
  }


  Future<void> _loadDefaultSettings() async {
    final hours =
        await _preferences.getInt(_defaultHoursKey) ?? _factoryDefaultHours;
    final minutes =
        await _preferences.getInt(_defaultMinutesKey) ?? _factoryDefaultMinutes;
    final seconds =
        await _preferences.getInt(_defaultSecondsKey) ?? _factoryDefaultSeconds;
    final targetSets = await _preferences.getInt(_defaultTargetSetsKey) ??
        _factoryDefaultTargetSets;
    final soundEnabled =
        await _preferences.getBool(_soundEnabledKey) ?? true;
    final vibrationEnabled =
        await _preferences.getBool(_vibrationEnabledKey) ?? true;

    if (!mounted) return;

    setState(() {
      _defaultHours = hours;
      _defaultMinutes = minutes;
      _defaultSeconds = seconds;
      _defaultTargetSets = targetSets.clamp(1, 99);
      _soundEnabled = soundEnabled;
      _vibrationEnabled = vibrationEnabled;
      _applyDefaultSettings();
    });
  }

  void _applyDefaultSettings() {
    _hoursController.text = _defaultHours.toString();
    _minutesController.text = _defaultMinutes.toString();
    _secondsController.text = _defaultSeconds.toString();
    _targetSetsController.text = _defaultTargetSets.toString();
  }

  Future<void> _saveCurrentSettingsAsDefault() async {
    if (_running) return;

    final duration = _readConfiguredDuration();
    if (duration == null) return;

    final targetSets = _readTargetSets();
    if (targetSets == null) return;

    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    await Future.wait([
      _preferences.setInt(_defaultHoursKey, hours),
      _preferences.setInt(_defaultMinutesKey, minutes),
      _preferences.setInt(_defaultSecondsKey, seconds),
      _preferences.setInt(_defaultTargetSetsKey, targetSets),
    ]);

    if (!mounted) return;

    setState(() {
      _defaultHours = hours;
      _defaultMinutes = minutes;
      _defaultSeconds = seconds;
      _defaultTargetSets = targetSets;
    });

    await _showMessage(
      title: '初期値を保存しました',
      message: '${_formatDefaultTime()} × $_defaultTargetSetsセットを\n'
          '起動時とClear時の初期値に設定しました。',
    );
  }

  String _formatDefaultTime() {
    final parts = <String>[];
    if (_defaultHours > 0) parts.add('$_defaultHours時間');
    if (_defaultMinutes > 0) parts.add('$_defaultMinutes分');
    if (_defaultSeconds > 0 || parts.isEmpty) parts.add('$_defaultSeconds秒');
    return parts.join('');
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _ticker?.cancel();
    WakelockPlus.disable();
    unawaited(_completionPlayer.dispose());

    _hoursController.dispose();
    _minutesController.dispose();
    _secondsController.dispose();
    _targetSetsController.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _onTick();
      if (_running) {
        WakelockPlus.enable();
      }
    }
  }

  void _onTick() {
    if (!mounted) return;

    final current = DateTime.now();

    if (_running && _finishAt != null) {
      final difference = _finishAt!.difference(current);

      if (difference <= Duration.zero) {
        _remaining = Duration.zero;
        _running = false;
        _finishAt = null;
        WakelockPlus.disable();
        setState(() => _now = current);
        _finishOneSet();
        return;
      }

      setState(() {
        _now = current;
        _remaining = difference;
      });
    } else {
      setState(() => _now = current);
    }
  }

  int? _readNonNegativeInt(
    TextEditingController controller,
    String fieldName,
  ) {
    final value = int.tryParse(controller.text.trim());

    if (value == null || value < 0) {
      _showMessage(
        title: '入力エラー',
        message: '$fieldNameには0以上の整数を入力してください。',
      );
      return null;
    }
    return value;
  }

  int? _readTargetSets() {
    final value = int.tryParse(_targetSetsController.text.trim());

    if (value == null || value < 1 || value > 99) {
      _showMessage(
        title: '入力エラー',
        message: '目標セット数には1～99の整数を入力してください。',
      );
      return null;
    }
    return value;
  }

  Duration? _readConfiguredDuration() {
    final hours = _readNonNegativeInt(_hoursController, '時');
    if (hours == null) return null;

    final minutes = _readNonNegativeInt(_minutesController, '分');
    if (minutes == null) return null;

    final seconds = _readNonNegativeInt(_secondsController, '秒');
    if (seconds == null) return null;

    final totalSeconds = hours * 3600 + minutes * 60 + seconds;
    if (totalSeconds <= 0) {
      _showMessage(
        title: '入力エラー',
        message: 'タイマーは1秒以上に設定してください。',
      );
      return null;
    }

    return Duration(seconds: totalSeconds);
  }

  Future<void> _startTimer() async {
    if (_running) return;

    if (_readTargetSets() == null) return;

    var duration = _remaining;
    if (duration <= Duration.zero) {
      final configured = _readConfiguredDuration();
      if (configured == null) return;
      duration = configured;
    }

    setState(() {
      _remaining = duration;
      _finishAt = DateTime.now().add(duration);
      _running = true;
    });

    await WakelockPlus.enable();
  }

  Future<void> _stopTimer() async {
    if (!_running) return;

    final finishAt = _finishAt;
    final remaining = finishAt?.difference(DateTime.now()) ?? _remaining;

    setState(() {
      _remaining = remaining.isNegative ? Duration.zero : remaining;
      _finishAt = null;
      _running = false;
    });

    await WakelockPlus.disable();
  }

  Future<void> _clearTimer() async {
    setState(() {
      _running = false;
      _finishAt = null;
      _remaining = Duration.zero;
      _completedSets = 0;

      _applyDefaultSettings();
    });

    await WakelockPlus.disable();
  }

  Future<void> _toggleSound() async {
    final enabled = !_soundEnabled;
    setState(() => _soundEnabled = enabled);
    await _preferences.setBool(_soundEnabledKey, enabled);
  }

  Future<void> _toggleVibration() async {
    final enabled = !_vibrationEnabled;
    setState(() => _vibrationEnabled = enabled);
    await _preferences.setBool(_vibrationEnabledKey, enabled);
  }

  Future<void> _playCompletionAlert() async {
    final alerts = <Future<void>>[];

    if (_soundEnabled) {
      alerts.add(
        _completionPlayer
            .play(AssetSource('sounds/pilorin.wav'))
            .catchError((Object _) {}),
      );
    }

    if (_vibrationEnabled) {
      alerts.add(
        Vibration.vibrate(preset: VibrationPreset.doubleBuzz)
            .catchError((Object _) {}),
      );
    }

    if (alerts.isNotEmpty) {
      await Future.wait(alerts);
    }
  }

  Future<void> _finishOneSet() async {
    if (_completionDialogOpen || !mounted) return;

    await _playCompletionAlert();

    final targetSets = _readTargetSets() ?? 5;
    setState(() => _completedSets += 1);

    _completionDialogOpen = true;

    if (_completedSets >= targetSets) {
      await _showMessage(
        title: '全セット完了',
        message: '$_completedSetsセット完了しました。\nお疲れさまでした。',
      );
    } else {
      final remainingSets = targetSets - _completedSets;
      await _showMessage(
        title: 'セット完了',
        message: '$_completedSetsセット目が終了しました。\n'
            '残り $remainingSetsセットです。',
      );
    }

    _completionDialogOpen = false;
  }

  Future<void> _showMessage({
    required String title,
    required String message,
  }) async {
    if (!mounted) return;

    await showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          backgroundColor: const Color(0xFF292929),
          title: Text(title),
          content: Text(
            message,
            style: const TextStyle(fontSize: 17, height: 1.5),
          ),
          actions: [
            FilledButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  String _twoDigits(int value) => value.toString().padLeft(2, '0');

  String _formatDate(DateTime dateTime) {
    return '${dateTime.year}-'
        '${_twoDigits(dateTime.month)}-'
        '${_twoDigits(dateTime.day)}';
  }

  String _formatClock(DateTime dateTime) {
    return '${_twoDigits(dateTime.hour)}:'
        '${_twoDigits(dateTime.minute)}:'
        '${_twoDigits(dateTime.second)}';
  }

  String _formatDuration(Duration duration) {
    final totalSeconds = duration.inMilliseconds <= 0
        ? 0
        : (duration.inMilliseconds / 1000).ceil();

    final hours = totalSeconds ~/ 3600;
    final minutes = (totalSeconds % 3600) ~/ 60;
    final seconds = totalSeconds % 60;

    return '${_twoDigits(hours)}:'
        '${_twoDigits(minutes)}:'
        '${_twoDigits(seconds)}';
  }

  Color get _timerColor {
    if (!_running) return yellowColor;

    final seconds = (_remaining.inMilliseconds / 1000).ceil();
    if (seconds <= 10) {
      final blinkRed = (_now.millisecondsSinceEpoch ~/ 500).isEven;
      return blinkRed ? redColor : yellowColor;
    }

    return greenColor;
  }

  Color get _counterColor {
    final target = int.tryParse(_targetSetsController.text.trim()) ?? 5;
    return _completedSets >= target ? greenColor : orangeColor;
  }

  void _changeTargetSets(int change) {
    final current = int.tryParse(_targetSetsController.text.trim()) ?? 5;
    final next = (current + change).clamp(1, 99);

    setState(() {
      _targetSetsController.text = next.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    final targetSets = int.tryParse(_targetSetsController.text.trim()) ?? 5;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight > 40
                      ? constraints.maxHeight - 40
                      : 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Clock Timer & Counter',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      _formatDate(_now),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 31,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        _formatClock(_now),
                        style: const TextStyle(
                          color: cyanColor,
                          fontSize: 58,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      child: Divider(color: Color(0xFF555555), thickness: 2),
                    ),
                    AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 150),
                      style: TextStyle(
                        color: _timerColor,
                        fontSize: 58,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.5,
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(_formatDuration(_remaining)),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'セット',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          '$_completedSets / $targetSets',
                          style: TextStyle(
                            color: _counterColor,
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          '回',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Expanded(
                          child: _ActionButton(
                            label: 'Start',
                            backgroundColor: const Color(0xFFCC3333),
                            foregroundColor: Colors.white,
                            onPressed: _startTimer,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _ActionButton(
                            label: 'Stop',
                            backgroundColor: const Color(0xFF666666),
                            foregroundColor: Colors.white,
                            onPressed: _stopTimer,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _ActionButton(
                            label: 'Clear',
                            backgroundColor: const Color(0xFFDDDD55),
                            foregroundColor: Colors.black,
                            onPressed: _clearTimer,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Text(
                      _running
                          ? 'タイマー動作中は画面を点灯したままにします'
                          : '初期設定：${_formatDefaultTime()} × $_defaultTargetSetsセット',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFFBBBBBB),
                        fontSize: 13,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Divider(
                        color: Color(0xFF555555),
                        thickness: 2,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: _NumberInput(
                            label: '時',
                            controller: _hoursController,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _NumberInput(
                            label: '分',
                            controller: _minutesController,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _NumberInput(
                            label: '秒',
                            controller: _secondsController,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    _buildTargetSetSelector(),
                    const SizedBox(height: 12),
                    _buildAlertSelector(),
                    const SizedBox(height: 12),
                    FilledButton.icon(
                      onPressed: _running ? null : _saveCurrentSettingsAsDefault,
                      icon: const Icon(Icons.save_outlined),
                      label: const Text('現在の時間・セット数を初期値に設定'),
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFF0ECB00),
                        foregroundColor: Colors.white,
                        minimumSize: const Size.fromHeight(48),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildAlertSelector() {
    return Row(
      children: [
        Expanded(
          child: _AlertToggleButton(
            icon: _soundEnabled
                ? Icons.volume_up_rounded
                : Icons.volume_off_rounded,
            label: '音',
            enabled: _soundEnabled,
            onPressed: _toggleSound,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _AlertToggleButton(
            icon: _vibrationEnabled
                ? Icons.vibration_rounded
                : Icons.mobile_off_rounded,
            label: '振動',
            enabled: _vibrationEnabled,
            onPressed: _toggleVibration,
          ),
        ),
      ],
    );
  }

  Widget _buildTargetSetSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '目標セット数',
          style: TextStyle(
            color: Color(0xFFBBBBBB),
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 10),
        IconButton.filledTonal(
          tooltip: '1減らす',
          onPressed: _running ? null : () => _changeTargetSets(-1),
          icon: const Icon(Icons.remove),
        ),
        SizedBox(
          width: 58,
          child: TextField(
            controller: _targetSetsController,
            enabled: !_running,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(2),
            ],
            onChanged: (_) => setState(() {}),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
            ),
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 12,
              ),
            ),
          ),
        ),
        IconButton.filledTonal(
          tooltip: '1増やす',
          onPressed: _running ? null : () => _changeTargetSets(1),
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}

class _AlertToggleButton extends StatelessWidget {
  const _AlertToggleButton({
    required this.icon,
    required this.label,
    required this.enabled,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final bool enabled;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: FilledButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, size: 21),
        label: Text('$label ${enabled ? 'ON' : 'OFF'}'),
        style: FilledButton.styleFrom(
          backgroundColor: enabled
              ? const Color(0xFF2E7D32)
              : const Color(0xFF555555),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w800,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

class _NumberInput extends StatelessWidget {
  const _NumberInput({
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(2),
          ],
          style: const TextStyle(
            color: Colors.black,
            fontSize: 21,
            fontWeight: FontWeight.w800,
          ),
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color(0xFFF0F0F0),
            contentPadding: EdgeInsets.symmetric(vertical: 12),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.label,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onPressed,
  });

  final String label;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          textStyle: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w800,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
