# tmct_mobile

PC版 `tmct_tk` を基にした、Android / iOS 共通のFlutter版です。

## 主な機能

- 日付表示
- 現在時刻を秒まで表示
- 時・分・秒指定のカウントダウン
- Start / Stop / Clear
- セット完了時の自動カウント
- 目標セット数の変更
- 残り10秒で赤・黄の点滅表示
- タイマー動作中の画面スリープ抑止
- セット完了時の振動
- バックグラウンド復帰時の残り時間補正

## Windowsでの準備

Flutter SDKとAndroid Studioをセットアップした後、PowerShellで実行します。

```powershell
flutter doctor
flutter create --platforms=android,ios tmct_mobile
```

作成された `tmct_mobile` に、このZIP内の次のファイルを上書きします。

```text
lib/main.dart
pubspec.yaml
```

その後、プロジェクトのディレクトリで実行します。

```powershell
flutter pub get
flutter run
```

接続中のAndroid端末を指定する場合：

```powershell
flutter devices
flutter run -d <device-id>
```

## Android APKの作成

動作確認用：

```powershell
flutter build apk --debug
```

配布用：

```powershell
flutter build apk --release
```

生成先：

```text
build/app/outputs/flutter-apk/app-release.apk
```

## iOSについて

iOS用コードは同じプロジェクト内に保持されますが、iOSアプリのビルドと実機確認にはmacOSとXcodeが必要です。

Macを用意できた時点で、プロジェクトをコピーして次を実行します。

```bash
flutter pub get
cd ios
pod install
cd ..
flutter run
```

## 補足

`wakelock_plus` は、タイマー動作中だけ画面を点灯状態に保つために使用しています。


## 画面構成

表示と操作の優先順位に合わせ、次の順序で配置しています。

1. 日付・現在時刻
2. カウントダウンタイマー
3. セットカウンター
4. Start / Stop / Clear
5. 区切り線
6. 時・分・秒
7. 目標セット数
