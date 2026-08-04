<p akugb=:keft>  
	<img src="./assets/02_Environment_titlebar_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/02_Environment_titlebar_light.png#gh-light-mode-only" alt="banner light">  
</p>  

# 開発ツールインストール												<!-- 02 -->    
　**SDK(Flutter)** 及び **IDE(Android Studio)** のインストールと環境設定を行います。  

> [!NOTE]  
> 縮小表示されている画像は⬇️で拡大されます。  
> 
> ```pwsh  
> ※ 記号例  
> 　🪟:デスクトップ、⬇️:マウスクリック、 [･･･]:ボタン、<･･･>:Press the Key、⇒:次動作、#･･･:コメント  
> 　"･･･":テキスト、a/b:選択(a or b)、｢･･･｣:ウィンドウ/メニュー/フォーム、  
> ```  

## インストール済みTool確認												<!-- 02-01 -->  
　<img src="./assets/env/M_TERM_PoewrShell.png" height="12">  
```pwsh
　git --version <⏎>  
```  
　　<img src="./assets/prtsc/02-01-01_git-version.png">  
```pwsh
　code --version <⏎>  
```  
　　<img src="./assets/prtsc/02-01-02_code-version.png">  

## Flutter(Framework) & Dart(Language) インストール						<!-- 02-02 -->  
　　👇ボタンより FlutterSDK バンドルをダウンロード  
　　[<img src="./assets/env/M_flutter-download.png" height="18" align="top">](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.44.8-stable.zip)  🔗[Install Flutter manually](https://docs.flutter.dev/install/manual)  
　解凍して任意のフォルダへ保存　　推奨：🗁 C:\Develop\  

## 環境変数登録															<!-- 02-03 -->  
### インストール&Path確認  
　画面左下の <img src="./assets/env/M_search-bar.png" height="18" align="top"> へ"環境変数"を入力して <img src="./assets/env/M_env-val-icon.png" height="18"> を⬇️  
　｢･･･のユーザー環境変数(<u>U</u>)｣ ⇒ ｢Path｣ ⇒ [編集(<u>E</u>)…] ⇒ ｢環境変数名の編集｣/[新規] ⇒ 追加 "C:\Develop\flutter\bin"  
　　　[<img src="./assets/prtsc/02-03-01_Env-val-cntl.png" width="96">](./assets/prtsc/02-03-01_Env-val-cntl.png)  

　<img src="./assets/env/M_TERM_PoewrShell.png" height="12">  
```pwsh
　flutter --verison <⏎>
```  
　　[<img src="./assets/prtsc/02-03-02_flutter-version.png" height="140">](./assets/prtsc/02-03-02_flutter-version.png)  
```pwsh
　dart --verison <⏎>
```  
　　<img src="./assets/prtsc/02-03-03_dart-version.png">  
  
### VS Code への機能拡張追加  
　<img src="./assets/env/M_TERM_PoewrShell.png" height="12">  
　左ツールバーの <img src="./assets/env/M_vsc-extention.png" height="18" align="top"> ⬇️ 、又は  <img src="./assets/env/M_vsc-setting.png" height="18" align="top">️⬇️ ⇒ [機能拡張　Ctrl+Shift+X]⬇️ ⇒  
　<img src="./assets/env/M_vsc_flutter-extention.png" height="32" align="top">　**/**　<img src="./assets/env/M_vsc_dart-extention.png" height="32" align="top">　インストール   

### Flutter初回診断  
　<img src="./assets/env/M_TERM_PoewrShell.png" height="12">  
```pwsh
　flutter doctor -v <⏎>  
```  
　　　[<img src="./assets/prtsc/02-03-04_flutter-doctor-error.png" width="96">](./assets/prtsc/02-03-04_flutter-doctor-error.png)  
> [!IMPORTANT]  
> この時点ではAndroidにエラーが出ていても問題無し  
> Flutterがインストールされていれば **OK**  

## Android Studio(IDE) インストール										<!-- 02-04 -->  
　![](./assets/env/M_IDE_AndroidStudo_20.png)  
　インストーラ入手  
　　🔗[Android Studio](https://developer.android.com/studio?hl=ja)　※使用許諾の必要があるため、リンク先の <img src="./assets/env/M_androidstudio-install.png" height="18"> よりダウンロード  
　　<img src="./assets/env/M_androidstudio-installer.png" height="24">　W⬇️  
　　デフォルト設定でインストール  
　　SDKインストール先 : 🗁 C:\Users\ユーザー名\AppData\Local\Android\Sdk  

### Project 作成  
|Welcome to<br>Android Studio|Trust and Open<br>Project|  
|:---:|:---:|  
|[<img src="./assets/prtsc/02-04-01_welcomeAS.png" width="128">](./assets/prtsc/02-04-01_welcomeAS.png) |[<img src="./assets/prtsc/02-04-02_trust-and-openproject.png" width="128">](./assets/prtsc/02-04-02_trust-and-openproject.png)|  
|｢Open｣ ⬇️|<img src="./assets/prtsc/trust-project.png" height="18" align="top"> ⬇️|

> [!IMPORTANT]
> **tmct_flt** は **main.dart** 及び **pubspec.yaml** を別途作成し、AndroidStudioに読み込ませています。

### SDK インストール  
　<img src="./assets/env/M_IDE_AndroidStudo_60.png" height="20">  
　　[<img src="./assets/prtsc/02-04-03_menu-bar-SDKmaneger.png" height="48">](./assets/prtsc/06-05_menu-bar-SDKmaneger.png)  
　Menu ｢<img src="./assets/prtsc/as-menu-button.png">｣ ⬇️ ⇒ ｢Tools」 ⇒ 「SDK manager」⬇️ ⇒  SDKインストール   

|Item|Content|Remarks|  
|:---|:---|:---|  
|SDK Platforms|Android 16.0 ("Baklava")|Emulator用なので、一般的なSDKで|
|SDK Tools|Android SDK Build-Tools<br>　　37.0.0<br>　　36.1.0<br>　　36.0.0<br>Android Eulator<br>Android SDK Platform-Tools|<br>┐<br>┼─　｢ <img src="./assets/prtsc/show-package-details.png" height="18" align="top"> ｣ で表示<br>┘<br> <br> <br>|  

　　🔗[SDKインストール方法詳細](./SDK-Introduction.md)  

> [!IMPORTANT]
> 項目の左に [<img src="./assets/prtsc/download-button.png">]️ がある場合は、先にクリックしてインストールすること。  

### Emulator(Pixcel7)インストール  
　<img src="./assets/env/M_IDE_AndroidStudo_60.png" height="20">  
　　<img src="./assets/prtsc/02-04-04_menu-bar_DeviceManeger.png" height="48">  
　Menu ｢<img src="./assets/prtsc/as-menu-button.png">️｣⬇️ ⇒ ｢Tools」 ⇒ 「SDK manager」⬇️ ⇒  スマートフォンイメージ インストール   

#### 設定内容  
|Item|Content|Remarks|  
|:---|:---|:---|  
|name|Pixcel 7||
|API|API 36.1 "Baklava";Andoid16||
|Services|Google Play Store||
|System Image|16KB Page Size Google Play Intel x86 64 Atom System Image||

　　🔗[Device設定方法詳細](./Device-Introduction.md)  
> [!IMPORTANT]
> 項目の左に [<img src="./assets/prtsc/download-button.png">]️ がある場合は、先にクリックしてインストールすること。  

### Android ライセンス承認  
　<img src="./assets/env/M_TERM_PoewrShell.png" height="12">  
```pwsh
　flutter doctor --android-licenses <⏎>  
```  
　<img src="./assets/prtsc/02-04-05_flutter-doctor-LicenseApproval1.png" height="48">  
　以降、何度か"Accept? (y/N)"と聞かれるので、全て\<y\>で **OK**  

　<img src="./assets/prtsc/02-04-06_flutter-doctor-LicenseApproval2.png">  
　上記メッセージを確認できれば承認完了。
  
## Emulator起動															<!-- 02-05 -->  
　<img src="./assets/env/M_IDE_AndroidStudo_60.png" height="20">  
　Menu ｢<img src="./assets/prtsc/as-menu-button.png">️｣⬇️ ⇒ ｢Tools」 ⇒ ｢Device Manager｣⬇️ ⇒  
　　<img src="./assets/prtsc/02-04-04_menu-bar_DeviceManeger.png" height="48">  

　｢Device Manager｣⬇️ ⇒ ｢**＋**｣⬇️ ⇒ ｢Create Virtual Device｣⬇️  
　　<img src="./assets/prtsc/02-05-01_DeviceManagerRun1.png" width="128" align="top"> 
　<img src="./assets/env/M_allow-R.png" height="20" align="top"> 
　<img src="./assets/prtsc/02-05-02_DeviceManagerRun2.png" width="128" align="top">
　<img src="./assets/env/M_allow-R.png" height="20" align="top"> 
　[<img src="./assets/prtsc/02-05-03_Emulator-Pixcel7-1st.png" height="256" align="top">](./assets/prtsc/02-05-03_Emulator-Pixcel7-1st.png)  
