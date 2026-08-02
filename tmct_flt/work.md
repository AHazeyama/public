<p align="left">  
	<img src="./assets/Tutorial_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/GitHub_description_light.png#gh-light-mode-only" alt="banner light">  
</p>  
  
# OverView  
#### 目的 : リハビリテーション(姿勢保持動作)支援アプリケーションの作成<br>　　　OS不問のMobileアプリケーション開発<br> 内容 : **Android** / **iOS** 両用開発環境を構築し、アプリケーション開発を行う  
|Item|Content|  
|:--|:--|  
|OS|![](./assets/env/M_OS_Win11_14.png)|  
|言語|![](./assets/env/M_LANG_Dart_20.png)|  
|FrameWork|![](./assets/env/M_FW_Flutter_20.png)|  
|IDE|![](./assets/env/M_IDE_AndroidStudo_20.png)|  
|Editor|![](./assets/env/M_EDT_Vim_14.png)　　![](./assets/env/M_EDT_VSCode_14.png)|  
|検証機材|![](./assets/env/M_Equip_XPERIA_10IV_14.png)|  
  
　※ 記号例  
```  
　🪟:デスクトップ、⬇️:マウスクリック、 [･･･]:ボタン、<･･･>:Press the Key、⇒:次動作、#･･･:コメント  
　"･･･":テキスト、a/b:選択(a or b)、｢･･･｣:ウィンドウ/メニュー/フォーム、  
```  

# リハビリテーション用タイマー&カウンター[tmct]作成手順  

> [!NOTE]
> 各画像は⬇️で拡大します。
## インストール  
　既に現環が存在する場合は末尾の ｢**現環境削除**｣ 項参照  
### 環境確認  
　<img src="./assets/env/M_SHELL_PWSH_10.png">  

```pwsh  
　git --version <⏎>  
```  
　　<img src="./assets/prtsc/01-01_git-version.png">  
```pwsh
　code --version <⏎>  
```  
　　<img src="./assets/prtsc/01-02_code-version.png">  

## Flutter インストール  
　　👇ボタンより FlutterSDK バンドルをダウンロード  
　　[<img src="./assets/prtsc/02-01_download-button.png" height="18">](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.44.8-stable.zip)  🔗[Install Flutter manually](https://docs.flutter.dev/install/manual)  
　解凍して任意のフォルダへ保存　　推奨：🗁 C:\Develop\  

## 環境変数登録
　画面左下の <img src="./assets/prtsc/03-01_search-bar.png"> へ"環境変数"を入力して <img src="./assets/prtsc/03-02_env-icon.png" height="20"> を⬇️  
　｢･･･のユーザー環境変数(<u>U</u>)｣ ⇒ ｢Path｣ ⇒ [編集(<u>E</u>)…] ⇒ ｢環境変数名の編集｣/[新規] ⇒ 追加 "C:\Develop\flutter\bin"  
　　　[<img src="./assets/prtsc/03-03_ControlPanel.png" width="96">](./assets/prtsc/03-03_ControlPanel.png)  

## Flutter パス確認  
　<img src="./assets/env/M_SHELL_PWSH_10.png">  
```pwsh
　flutter --verison <⏎>
```  
　　[<img src="./assets/prtsc/04-01_flutter-version.png" width="96">](./assets/prtsc/04-01_flutter-version.png)  
```pwsh
　dart --verison <⏎>
```  
　　[<img src="./assets/prtsc/04-02_dart-version.png" width="96">](./assets/prtsc/04-02_dart-version.png)  
  
## VS Code への機能拡張追加  
　<img src="./assets/env/M_SHELL_PWSH_10.png">  
　左ツールバーの <img src="./assets/prtsc/extetion.png" aligh="bottom">
⬇️ 、又は ⚙️⬇️ ⇒ [機能拡張　Ctrl+Shift+X]⬇️ ⇒  

　[<img src="./assets/prtsc/04-03_VSC-flutter-ext.png" width="192" align="middle">](./assets/prtsc/04-03_VSC-flutter-ext.png)　**/**　[<img src="./assets/prtsc/04-04_VSC-dart-ext.png" width="192" align="middle">](./assets/prtsc/04-04_VSC-dart-ext.png)  

## Flutter初回診断  
　<img src="./assets/env/M_SHELL_PWSH_10.png">  
```pwsh  
　flutter doctor -v <⏎>  
```  
　　　[<img src="./assets/prtsc/05-01_flutter-doctor.png" width="96">](./assets/prtsc/05-01_flutter-doctor.png)  
> [!IMPORTANT]  
> この時点ではAndroidにエラーが出ていても問題無し  
> Flutterがインストールされていれば **OK**  
  
## AndroidStudio インストール  
　![](./assets/env/M_IDE_AndroidStudo_20.png)  
　インストーラ入手  
　　🔗[Android Studio](https://developer.android.com/studio?hl=ja)　※使用許諾の必要があるため、リンク先の <img src="./assets/prtsc/06-01_download-button.png" height="18"> よりダウンロード  
　　![](./assets/prtsc/06-02_Installer-icon.png) W⬇️  
　　デフォルト設定でインストール  
　　SDKインストール先 : 🗁 C:\Users\ユーザー名\AppData\Local\Android\Sdk  

　　🔗[インストール方法詳細](./AS_Introdunction.md)  


### Project 作成
|Welcome to<br>Android Studio|Trust and Open<br>Project|  
|:---:|:---:|  
|[<img src="./assets/prtsc/06-03_welcomeAS.png" width="128">](./assets/prtsc/06-03_welcomeAS.png) |[<img src="./assets/prtsc/06-04_trust-and-openproject.png" width="128">](./assets/prtsc/06-04_trust-and-openproject.png)|  
|｢Open｣ ⬇️|<img src="./assets/prtsc/trust-project.png" height="18" align="top"> ⬇️|

> [!IMPORTANT]
> **tmct_flt** は **main.dart** 及び **pubspec.yaml** を別途作成し、AndroidStudioに読み込ませています。

### SDK インストール  
　<img src="./assets/env/M_IDE_AndroidStudo_20.png">  
　　[<img src="./assets/prtsc/06-05_menu-bar-SDKmaneger.png" height="48">](./assets/prtsc/06-05_menu-bar-SDKmaneger.png)  
　Menu ｢<img src="./assets/prtsc/as-menu-button.png">｣ ⬇️ ⇒ ｢Tools」 ⇒ 「SDK manager」⬇️ ⇒  SDKインストール   
　設定内容  
|Item|Content|Remarks|  
|:---|:---|:---|  
|SDK Platforms|Android 16.0 ("Baklava")|Emulator用なので、一般的なSDKで|
|SDK Tools|Android SDK Build-Tools<br>　　37.0.0<br>　　36.1.0<br>　　36.0.0<br>Android Eulator<br>Android SDK Platform-Tools|<br>┐<br>┼─　｢ <img src="./assets/prtsc/show-package-details.png" height="18" align="top"> ｣ で表示<br>┘<br> <br> <br>|  

　　🔗[SDKインストール方法詳細](./AS_SDK-Introduction.md)  

> [!IMPORTANT]
> 必要項目の左に [![](./assets/prtsc/99-99-02_download-button.png)]️ がある場合は、先にクリックしてインストールすること。  

### Device 設定  
　<img src="./assets/env/M_IDE_AndroidStudo_20.png">  
　　<img src="./assets/prtsc/03-04_Menu-bar_DeviceManeger.png" width="256">  
　Menu ｢<img src="./assets/prtsc/99-99-01_MenuButton.png">️｣⬇️ ⇒ ｢Tools」 ⇒ 「SDK manager」⬇️ ⇒  スマートフォンイメージ インストール   

　設定内容  
|Item|Content|Remarks|  
|:---|:---|:---|  
|name|Pixcel 7||
|API|API 37.0 "CinnamonBun";Andoid17||
|Services|Google Play Store||
|System Image|16KB Page Size Google Play<br>Intel x86 64 Atom System Image||

　　🔗[Device設定方法詳細](./AS_Device-Introduction.md)  
> [!IMPORTANT]
> 必要項目の左に [<img src="./assets/prtsc/99-99-02_download-button.png">]️ がある場合は、先にクリックしてインストールすること。  


### Android ライセンス承認  
　<img src="./assets/env/M_SHELL_PWSH_10.png">  
```pwsh
　flutter doctor --android-licenses <⏎>  
```  
　<img src="./assets/prtsc/03-08_flutter-doctor-LicenseApproval1.png">
　以降、何度か"Accept? (y/N)"と聞かれるので、全て\<y\>で **OK**  

<br>

　<img src="./assets/prtsc/03-09_flutter-doctor-LicenseApproval2.png">  
　上記メッセージを確認できれば承認完了。
  
### Emulator 起動  
　<img src="./assets/env/M_IDE_AndroidStudo_20.png">  
　Menu ｢<img src="./assets/prtsc/99-99-01_MenuButton.png">️｣⬇️ ⇒ ｢Tools」 ⇒ ｢Device Manager｣⬇️ ⇒  
　　<img src="./assets/prtsc/03-04_Menu-bar_DeviceManeger.png" width="256">  

　｢Device Manager｣⬇️ ⇒ ｢**＋**｣⬇️ ⇒ ｢Create Virtual Device｣⬇️  
　　<img src="./assets/prtsc/03-05_DeviceManagerRun1.png" width="128"> <img src="./assets/prtsc/99-99-98_Allow.png"> <img src="./assets/prtsc/03-06_DeviceManagerRun2.png" width="128"> <img src="./assets/prtsc/99-99-98_Allow.png">  
　　[<img src="./assets/prtsc/03-07_Emulator-Pixcel7-1st.png" width="128">](./assets/prtsc/03-07_Emulator-Pixcel7-1st.png)  

<br>

## tmct_flt 作成  
> [!NOTE]  
> コマンドは全て <img src="./assets/env/M_SHELL_PWSH_10.png">  
> Emulator が起動した状態で実施  
### 開発環境確認  
　```  
　flutter doctor -v <⏎>  
　```  
<img src="./assets/prtsc/03-10_flutter-doctor.png">  

　```
　flutter devices <⏎>  
　```  
<img src="./assets/prtsc/03-11_flutter-devices.png">  

### Android フォルダ生成  
> [!TIP]
> .dart、.yaml、.xmlのバックアップをお勧めします。  
> <img src="./assets/env/M_SHELL_PWSH_10.png">  
> <img src="./assets/prtsc/03-12_tree-tmct_flt.png">  

　```
 flutter create --platforms=android --project-name tmct_flt . <⏎>
　```
　<img src="./assets/prtsc/03-13_flutter-create.png">  

### パッケージ取得
　```
　flutter pub get <⏎>
　```  
　<img src="./assets/prtsc/03-15_flutter-pub-get.png">  

### アイコン生成  
　```
　flutter pub add --dev flutter_luncher_icons <⏎>
　```  
　<img src="./assets/prtsc/03-16_dart-run-flutter_launcher_icons.png">  

　```
　dart run flutter_launcher_icons <⏎>
　```  
> [!IMPORTANT]
> <img src="./assets/prtsc/03-17_flutter-analyze.png">  
> エラー発生時は "🗋 pubspec.yaml" を確認
> iosが "ios: **true**" になっていれば変更 ⇒ "ios: **false**"　# 現状Android版のみのため  
　<img src="./assets/prtsc/03-17_pubspec_yaml-expect.png">  

　```  
　flutter analyze <⏎>
　```  
　<img src="./assets/prtsc/03-18_flutter-analyze.png">  

> [!IMPORTANT]
> <img src="./assets/prtsc/03-19_flutter-analyze-error.png">  
> エラー発生時は "🗁 test" を削除  

　```
　flutter devices <⏎>  
　```
　<img src="./assets/prtsc/03-20_flutter-devices.png">  

### Emulatorで実行  
　"flutter devices"で確認したデバイスIDを指定する事。  
　```
　flutter run -d emulator-5554 <⏎>  
　```  
[<img src="./assets/prtsc/03-21_emulation-install.png" width="128" align="top">](./assets/prtsc/03-21_emulation-install.png) 
　<img src="./assets/prtsc/99-99-99_Allow.png" align="top">
　[<img src="./assets/prtsc/03-22_emulation-tmct_flt.png" width="128" align="top">](./assets/prtsc/03-22_emulation-tmct_flt.png) 
　<img src="./assets/prtsc/99-99-99_Allow.png" align="top">
　[<img src="./assets/prtsc/03-23_emulation-home.png" width="128" align="top">](./assets/prtsc/03-23_emulation-home.png)
> [!TIP]
> 基本的な動作確認を行っておきます

<br>

## 配布版作成  
　<img src="./assets/env/M_SHELL_PWSH_10.png">  
　```  
　flutter clean <⏎>  
　```  
　```  
　flutter pub get <⏎>  
　```  
　<img src="./assets/prtsc/04-01_flutter-pub-get.png">  
　```  
　flutter pub get <⏎>  
　```  

 <⏎>  

<br>
<br>
<br>
<br>
<br>
 <⏎>  