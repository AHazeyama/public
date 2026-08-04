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

# リハビリテーション用タイマー&カウンター[tmct]開発手順  

> [!NOTE]
> 各画像は⬇️で拡大します。
## インストール														<!-- 01 -->
　既に現環が存在する場合は末尾の ｢**現環境削除**｣ 項参照  
### 環境確認														<!-- 02 -->
　<img src="./assets/env/M_SHELL_PWSH_10.png">  

　```
　git --version <⏎>  
　```  
　　<img src="./assets/prtsc/02-01_git-version.png">  
　```  
　code --version <⏎>  
　```  
　　<img src="./assets/prtsc/02-02_code-version.png">  

## Flutter インストール												<!-- 03 -->
　　👇ボタンより FlutterSDK バンドルをダウンロード  
　　[<img src="./assets/prtsc/03-01_download-button.png" height="18">](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.44.8-stable.zip)  🔗[Install Flutter manually](https://docs.flutter.dev/install/manual)  
　解凍して任意のフォルダへ保存　　推奨：🗁 C:\Develop\  

## 環境変数登録														<!-- 04 -->
　画面左下の <img src="./assets/prtsc/04-01_search-bar.png"> へ"環境変数"を入力して <img src="./assets/prtsc/04-02_env-icon.png" height="20"> を⬇️  
　｢･･･のユーザー環境変数(<u>U</u>)｣ ⇒ ｢Path｣ ⇒ [編集(<u>E</u>)…] ⇒ ｢環境変数名の編集｣/[新規] ⇒ 追加 "C:\Develop\flutter\bin"  
　　　[<img src="./assets/prtsc/04-03_control-panel.png" width="96">](./assets/prtsc/04-03_control-panel.png)  

## Flutter パス確認													<!-- 05 -->
　<img src="./assets/env/M_SHELL_PWSH_10.png">  
　```
　flutter --verison <⏎>
　```  
　　[<img src="./assets/prtsc/05-01_flutter-version.png" height="140">](./assets/prtsc/05-01_flutter-version.png)  
　```
　dart --verison <⏎>
　```  
　　[<img src="./assets/prtsc/05-02_dart-version.png" height="14">](./assets/prtsc/05-02_dart-version.png)  
  
## VS Code への機能拡張追加											<!-- 06 -->
　<img src="./assets/env/M_SHELL_PWSH_10.png">  
　左ツールバーの <img src="./assets/prtsc/extetion.png" aligh="bottom">
⬇️ 、又は ⚙️⬇️ ⇒ [機能拡張　Ctrl+Shift+X]⬇️ ⇒  

　[<img src="./assets/prtsc/06-01_VSC-flutter-ext.png" width="192" align="middle">](./assets/prtsc/06-01_VSC-flutter-ext.png)　**/**　[<img src="./assets/prtsc/06-02_VSC-dart-ext.png" width="192" align="middle">](./assets/prtsc/06-02_VSC-dart-ext.png)  

## Flutter初回診断													<!-- 07 -->
　<img src="./assets/env/M_SHELL_PWSH_10.png">  
　```
　flutter doctor -v <⏎>  
　```  
　　　[<img src="./assets/prtsc/07-01_flutter-doctor.png" width="96">](./assets/prtsc/07-01_flutter-doctor.png)  
> [!IMPORTANT]  
> この時点ではAndroidにエラーが出ていても問題無し  
> Flutterがインストールされていれば **OK**  
  
## AndroidStudio インストール										<!-- 08 -->
　<img src="./assets/env/M_IDE_AndroidStudo_20.png">  
　インストーラ入手  
　　🔗[Android Studio](https://developer.android.com/studio?hl=ja)　※使用許諾の必要があるため、リンク先の <img src="./assets/prtsc/08-01_download-button.png" height="18"> よりダウンロード  
　　<img src="./assets/prtsc/08-02_Installer-icon.png"> W⬇️  
　　デフォルト設定でインストール  
　　SDKインストール先 : 🗁 C:\Users\ユーザー名\AppData\Local\Android\Sdk  
　　🔗[インストール方法詳細](./AS_Introdunction.md)  


### Project 作成													<!-- 09 -->
|Welcome to<br>Android Studio|Trust and Open<br>Project|  
|:---:|:---:|  
|[<img src="./assets/prtsc/09-01_welcomeAS.png" width="128">](./assets/prtsc/09-01_welcomeAS.png) |[<img src="./assets/prtsc/09-02_trust-and-openproject.png" width="128">](./assets/prtsc/09-02_trust-and-openproject.png)|  
|｢Open｣ ⬇️|<img src="./assets/prtsc/trust-project.png" height="18" align="top"> ⬇️|

> [!IMPORTANT]
> **tmct_flt** は **main.dart** 及び **pubspec.yaml** を別途作成し、AndroidStudioに読み込ませています。

### SDK インストール												<!-- 10 -->
　<img src="./assets/env/M_IDE_AndroidStudo_20.png">  
　　[<img src="./assets/prtsc/10-01_menu-bar-SDKmaneger.png" height="48">](./assets/prtsc/06-05_menu-bar-SDKmaneger.png)  
　Menu ｢<img src="./assets/prtsc/as-menu-button.png">｣ ⬇️ ⇒ ｢Tools」 ⇒ 「SDK manager」⬇️ ⇒  SDKインストール   

#### 設定内容  
|Item|Content|Remarks|  
|:---|:---|:---|  
|SDK Platforms|Android 16.0 ("Baklava")|Emulator用なので、一般的なSDKで|
|SDK Tools|Android SDK Build-Tools<br>　　37.0.0<br>　　36.1.0<br>　　36.0.0<br>Android Eulator<br>Android SDK Platform-Tools|<br>┐<br>┼─　｢ <img src="./assets/prtsc/show-package-details.png" height="18" align="top"> ｣ で表示<br>┘<br> <br> <br>|  

　　🔗[SDKインストール方法詳細](./AS_SDK-Introduction.md)  

> [!IMPORTANT]
> 項目の左に [<img src="./assets/prtsc/download-button.png">]️ がある場合は、先にクリックしてインストールすること。  

### Device 設定														<!-- 11 -->
　<img src="./assets/env/M_IDE_AndroidStudo_20.png">  
　　<img src="./assets/prtsc/11-01_menu-bar_DeviceManeger.png" height="48">  
　Menu ｢<img src="./assets/prtsc/as-menu-button.png">️｣⬇️ ⇒ ｢Tools」 ⇒ 「SDK manager」⬇️ ⇒  スマートフォンイメージ インストール   

#### 設定内容  
|Item|Content|Remarks|  
|:---|:---|:---|  
|name|Pixcel 7||
|API|API 36.1 "Baklava";Andoid16||
|Services|Google Play Store||
|System Image|16KB Page Size Google Play Intel x86 64 Atom System Image||

　　🔗[Device設定方法詳細](./AS_Device-Introduction.md)  
> [!IMPORTANT]
> 項目の左に [<img src="./assets/prtsc/download-button.png">]️ がある場合は、先にクリックしてインストールすること。  


### Android ライセンス承認											<!-- 12 -->
　<img src="./assets/env/M_SHELL_PWSH_10.png">  
　```
　flutter doctor --android-licenses <⏎>  
　```  
<img src="./assets/prtsc/12-01_flutter-doctor-LicenseApproval1.png">
　以降、何度か"Accept? (y/N)"と聞かれるので、全て\<y\>で **OK**  

<br>

　<img src="./assets/prtsc/12-02_flutter-doctor-LicenseApproval2.png">  
　上記メッセージを確認できれば承認完了。
  
### Emulator 起動													<!-- 13 -->
　<img src="./assets/env/M_IDE_AndroidStudo_20.png">  
　Menu ｢<img src="./assets/prtsc/as-menu-button.png">️｣⬇️ ⇒ ｢Tools」 ⇒ ｢Device Manager｣⬇️ ⇒  
　　<img src="./assets/prtsc/11-01_menu-bar_DeviceManeger.png" height="48">  

　｢Device Manager｣⬇️ ⇒ ｢**＋**｣⬇️ ⇒ ｢Create Virtual Device｣⬇️  
　　<img src="./assets/prtsc/13-02_DeviceManagerRun1.png" width="128"> 
<img src="./assets/prtsc/allow30.png" align="top"> 
<img src="./assets/prtsc/13-03_DeviceManagerRun2.png" width="128"> 
<img src="./assets/prtsc/allow30.png" align="top">  
　　[<img src="./assets/prtsc/13-04_Emulator-Pixcel7-1st.png" height="256">](./assets/prtsc/03-07_Emulator-Pixcel7-1st.png)  

<br>

## tmct_flt 作成													<!-- 14 -->
> [!NOTE]  
> コマンドは全て <img src="./assets/env/M_SHELL_PWSH_10.png">  
> Emulator が起動した状態で実施  
### 開発環境確認													<!-- 15 -->
　```
　flutter doctor -v <⏎>  
　```  
<img src="./assets/prtsc/15-01_flutter-doctor.png">  

<br>

　```
　flutter devices <⏎>  
　```  
<img src="./assets/prtsc/15-02_flutter-devices.png">  

### Android フォルダ生成											<!-- 16 -->
> [!TIP]
> .dart、.yaml、.xmlのバックアップをお勧めします。  
> 　```  
> tree /f ./tmct_flt <⏎>
> 　```  
> 　　<img src="./assets/prtsc/16-01_tree-tmct_flt.png" align="middle">  

　```
　flutter create --platforms=android --project-name tmct_flt . <⏎>
　```
　<img src="./assets/prtsc/16-02_flutter-create.png">  

### パッケージ取得													<!-- 17 -->
　```
　flutter pub get <⏎>
　```  
　<img src="./assets/prtsc/17-01_flutter-pub-get.png">  

### アイコン生成													<!-- 18 -->
　🔗アイコン生成手順(TBD)  
#### アイコン付加手順
　```
　flutter pub add --dev flutter_luncher_icons <⏎>
　```  
　<img src="./assets/prtsc/18-01_flutter_pub-add.png">  

　```
　dart run flutter_launcher_icons <⏎>
　```  
　<img src="./assets/prtsc/18-02_dart-run-flutter_launcher_icons.png">  

> [!IMPORTANT]
> エラー発生時は "🗋 pubspec.yaml" を確認
> iosが "ios: **true**" になっていれば変更 ⇒ "ios: **false**"　# 現状Android版のみのため  
> 　<img src="./assets/prtsc/18-03_pubspec_yaml-expect.png">  

　```  
　flutter analyze <⏎>
　```  
　<img src="./assets/prtsc/18-04_flutter-analyze.png">  

> [!IMPORTANT]
> <img src="./assets/prtsc/18-05_flutter-analyze-error.png">  
> エラー発生時は "🗁 test" を削除  

　```
　flutter devices <⏎>  
　```
　<img src="./assets/prtsc/18-06_flutter-devices.png">  

### Emulatorで実行  												<!-- 19 -->
　"flutter devices"で確認したデバイスIDを指定する事。  
　```
　flutter run -d emulator-5554 <⏎>  
　```  
　　[<img src="./assets/prtsc/19-01_emulation-install.png" height="256" align="top">](./assets/prtsc/19-01_emulation-install.png)
　<img src="./assets/prtsc/allow60.png" align="middle">
　[<img src="./assets/prtsc/19-02_emulation-tmct_flt.png" height="256" align="top">](./assets/prtsc/19-02_emulation-tmct_flt.png)
　<img src="./assets/prtsc/allow60.png" align="middle">
　[<img src="./assets/prtsc/19-03_emulation-home.png" height="256" align="top">](./assets/prtsc/19-03_emulation-home.png)
> [!TIP]
> 基本的な動作確認を行っておきます

<br>

## 配布版作成														<!-- 20 -->
　<img src="./assets/env/M_SHELL_PWSH_10.png">  
　```  
　flutter clean <⏎>  
　```  
　```  
　flutter pub get <⏎>  
　```  
　　<img src="./assets/prtsc/20-01_flutter-pub-get.png">  

　```  
　flutter build apk --release <⏎>  
　```  
　　[<img src="./assets/prtsc/20-02_flutter-build-apk.png" height="256">](./assets/prtsc/20-02_flutter-build-apk.png)  
　出力フォルダ : 🗁 .\build\app\outputs\app-release.apk
　配布時は 🗋 tmct-flt.apk にリネーム


## 実機検証															<!-- 21 -->
### 接続															<!-- 22 -->
　開発PCとスマートフォンをUSBケーブルで接続 ⇒ <img src="./assets/env/M_OS_USBconnection.png" height="18"> 確認  
### USBデバッグモード On											<!-- 23 -->
　<img src="./assets/env/M_OS_Android_18.png" height="12">  
　｢⚙️｣ ⇒ ｢システム｣ ⇒ ｢開発者向けオプション｣ ⇒ <img src="./assets/env/M_OS_Android-USBdebug.png" height="18"> ⇒ ｢USBデバッグを許可しますか？｣ ⇒ [**OK**]  

### tmct_flt インストール											<!-- 24 -->
　<img src="./assets/env/M_SHELL_PWSH_10.png">  
　```
　flutter devices <⏎>  
　```  
　<img src="./assets/prtsc/24-01_flutter-devices.png" height="128">  

　```
　flutter run <⏎>  
　```  
　[<img src="./assets/prtsc/24-02_flutter-run.png" height="512">](./assets/prtsc/24-02_flutter-run.png)  

　HOMEに移動  
　[<img src="./assets/EXPERIA10IV_tmct_flt.png" height="256">](./assets/EXPERIA10IV_tmct_flt.png)  

### デバッグ														<!-- 25 -->
　実行　[<img src="./assets/env/M_Android-tmct-icon.png" width="92" align="top">](./assets/env/M_Android-tmct-icon.png) タップ
　<img src="./assets/prtsc/allow30.png" align="top" >
　<img src="./assets/tmct_flt_v1.2.0.png" height="512" align="top">

#### Input items
>| Item | Description |
>| :--| :--|
>| YYYY-MM-DD| 現在日付 |
>| HH:MM:SS | 現在時刻 |
>| HH:MM:SS | タイマー時間 |
>| セット | 繰り返し回数 |
#### Buttons
>| Item | Description |
>| :--| :--|
>| Start | カウントダウン開始 |
>| Stop | カウントダウン停止 |
>| Clear | 時間、回数リセット |
>| 時 | タイマー時 設定 |
>| 分 | タイマー分 設定 |
>| 秒 | タイマー秒 設定 |
>| 目標セット数 | タイマー実行回数 |
>| 現在の時間･セット数を初期値に設定 | 指定した時間とセット数を初期値に設定 |

#### デバッグ項目  
|分類|項目|操作|期待値|判定|備考|
|:---|:---|:---|:---|:---|:---|
|正常系||||||
|異常系||||||
|境界値||||||
|デグレード||||||
|エージング||||||
　🔗テスト仕様書(TBD)

## 公開準備															<!-- 26 -->
### Sourceコード整備
　コメント整備

### Version設定
　フォーマット : v0.00.0+1 (v **X1** . **X2** . **X3** +**X4**)  
|位置|項目|内容|備考|
|:---|:---|:---|:---|
|X1|メジャーバージョン|主要機能追加||
|X2|マイナーバージョン|機能追加|改良、UI変更等|
|X3|カウンターメジャー|不良対策履歴|外部公開不良等|
|X4|ビルド|内部更新|内部変更、デバッグ等|

### ドキュメント整備
　README、要件定義、機能仕様、詳細仕様、検査仕様
> [!NOTE]
> 公開範囲は個別判断

### GitHub登録内容定義
　リポジトリ構成、.gitignore等
