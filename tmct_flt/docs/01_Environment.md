<p akugb=:keft>
	<img src="./assets/01_Environment_titlebar_dark.png#gh-dark-mode-only" alt="banner dark">
	<img src="./assets/01_Environment_titlebar_light.png#gh-light-mode-only" alt="banner light">
</p>

# 開発ツールインストール											<!-- 01 -->  
　**SDK(Flutter)** 及び **IDE(Android Studio)** のインストールと環境設定を行います。

> [!NOTE]  
> ※ 凡例  
> 　<img src="./assets/env/M_win.png" height="14"> デスクトップ、️<img src="./assets/env/M_click.png" height="14">：マウスクリック、 <img src="./assets/env/M_button.png" height="14">：ボタン、<img src="./assets/env/M_key.png" height="14">：Press the Key、<img src="./assets/env/M_return.png" height="12">：Enter key press、  
> 　<img src="./assets/env/M_text.png" height="14">：テキスト、**a** / **b**：選択(**a** or **b**)、<img src="./assets/env/M_menu.png" height="11">：ウィンドウ/メニュー/フォーム、⇒：次動作、<img src="./assets/env/M_comment.png" height="12">：コメント、  
>　<img src="./assets/env/M_term.png" height="14">：ターミナル、<img src="./assets/env/M_copy.png" height="14">：クリックでText表示 (コピー可能)  

> [!NOTE]  
> 縮小表示されている画像は <img src="./assets/env/M_click.png" height="14"> で拡大されます (マウスカーソルが <img src="./assets/env/M_info.png" height="14"> になる画像が縮小表示画像です)。  
> <img src="./assets/env/M_caution.png" height="14"> 本章のコマンドは全て　<img src="./assets/env/M_term.png" height="14"> <img src="./assets/env/M_SHELL_PowerShell.png" height="12">　にて実行しています。  

## インストール済みツール確認										<!-- 01-01 -->
<details>   
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_git-version.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
git --version
```  
</details>  
　<img src="./assets/prtsc/M_ER_01_git-version.png">  
<details>   
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_code-version.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
code --version
```  
</details>  
　<img src="./assets/prtsc/M_ER_01_code-version.png">  

## Flutter(Framework) & Dart(Language) インストール				<!-- 01-02 -->
　👇ボタンより FlutterSDK バンドルをダウンロード  
　[<img src="./assets/env/M_flutter-download.png" height="18" align="top">](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.44.8-stable.zip)  <img src="./assets/env/M_link.png" height="14"> [Install Flutter manually](https://docs.flutter.dev/install/manual)  
　解凍して任意のフォルダへ保存　　推奨：🗁 C : \ Develop \  

## 環境変数登録													<!-- 01-03 -->
### インストール&Path確認
　<img src="./assets/env/M_win.png" height="14"> 左下の <img src="./assets/env/M_search-bar.png" height="18" align="top"> へ"環境変数"を入力して [<img src="./assets/env/M_env-val-icon.png" height="18">](./assets/env/M_env-val-icon.png) を <img src="./assets/env/M_click.png" height="14">  

　｢･･･のユーザー環境変数(<u>U</u>)｣ ⇒ ｢Path｣ ⇒ [編集(<u>E</u>)…] ⇒ ｢環境変数名の編集｣/[新規] ⇒ 追加 "C:\Develop\flutter\bin"  
　[<img src="./assets/prtsc/M_WIN_01_Env-val-cntl.png" width="320">](./assets/prtsc/M_WIN_01_Env-val-cntl.png)

<details>   								<!-- Segment row count: 11 rows -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-version.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter --version
```  
</details>  

　[<img src="./assets/prtsc/M_ER_01_flutter-version.png" width="580">](./assets/prtsc/M_ER_01_flutter-version.png)  

<details>   								<!-- Segment row count: 11 rows -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_dart-version.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
dart --version
```  
</details>  

　[<img src="./assets/prtsc/M_ER_01_dart-version.png" width="580">](./assets/prtsc/M_ER_01_dart-version.png)  

### VS Code への機能拡張追加
　左ツールバーの 
<img src="./assets/env/M_VSC_extention.png" height="14">
<img src="./assets/env/M_click.png" height="14">️ 、 又は
<img src="./assets/env/M_VSC_function.png" height="14">️️
<img src="./assets/env/M_click.png" height="14"> ⇒ 
<img src="./assets/env/M_VSC_func_ext.png" height="14">️
<img src="./assets/env/M_click.png" height="14"> ⇒  
　<img src="./assets/prtsc/M_VSC_flutter-extention.png" height="32" align="top">　**/**　
<img src="./assets/prtsc/M_VSC_dart-extention.png" height="32" align="top">　インストール  

### Flutter初回診断
<details>   								<!-- Segment row count: 11 rows -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-doctor-v.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter doctor -v
```  
</details>  

　[<img src="./assets/prtsc/M_ER_01_flutter-doctor-v-error.png" width="580">](./assets/prtsc/M_ER_01_flutter-doctor-v-error.png)

> [!IMPORTANT]
> この時点では Android Studio / cmdline-tools がインストールされていないため、にエラーが出る。
> Flutterがインストールされていれば **OK**

## Android Studio(IDE) インストール									<!-- 01-04 -->
　![](./assets/env/M_IDE_AndroidStudo_20.png)
### インストーラ入手  
　<img src="./assets/env/M_link.png" height="14"> [Android Studio](https://developer.android.com/studio?hl=ja)　※使用許諾の必要があるため、リンク先の <img src="./assets/env/M_androidstudio-install.png" height="18"> よりダウンロード  
　<img src="./assets/env/M_androidstudio-installer.png" height="24" align="top"> W️ <img src="./assets/env/M_click.png" height="14">
　　　　<img src="./assets/env/M_MSG_default-install.png" height="12">    
　　SDKインストール先 : <img src="./assets/env/M_folder.png" height="14"> C:\Users\ユーザー名\AppData\Local\Android\Sdk
### プロジェクト作成
|Welcome to<br>Android Studio|Trust and Open<br>Project|
|:---:|:---:|
|[<img src="./assets/prtsc/M_AS_01_welcomeAS.png" width="148">](./assets/prtsc/01-04-01_welcomeAS.png) |[<img src="./assets/prtsc/M_AS_01_trust-and-openproject.png" width="148">](./assets/prtsc/01-04-02_trust-and-openproject.png)|
|｢Open｣ <img src="./assets/env/M_click.png" height="12">|<img src="./assets/prtsc/M_AS_trust-project.png" height="18"> <img src="./assets/env/M_click.png" height="12">|

> [!IMPORTANT]
> **tmct_flt** は **main.dart** 及び **pubspec.yaml** を別途作成し、Android Studioに読み込ませています。

### SDK インストール
　<img src="./assets/env/M_IDE_AndroidStudio.png" height="20">  
　[<img src="./assets/prtsc/M_AS_menu-bar-SDK_Maneger.png" height="48">](./assets/env/M_as_menu-bar-SDK_Maneger.png)  
　Menu ｢ <img src="./assets/env/M_AS_menu-button.png" height="12"> ｣ 
<img src="./assets/env/M_click.png" height="12"> ⇒ ｢Tools」 ⇒ 「SDK Manager」
<img src="./assets/env/M_click.png" height="12"> ⇒  SDKインストール  

|Item|Content|Remarks|
|:---|:---|:---|
|SDK Platforms|Android 16.0 ("Baklava")|Emulator用なので、一般的なSDKで|
|SDK Tools|Android SDK Build-Tools<br>　　37.0.0<br>　　36.1.0<br>　　36.0.0<br>Android Emulator<br>Android SDK Platform-Tools|<br>┐<br>┼─　｢ <img src="./assets/prtsc/M_AS_SDK-ShowPackageDetails-on.png" height="18" align="top"> ｣ で表示<br>┘<br> <br> <br>|

　<img src="./assets/env/M_link.png" height="14"> [SDKインストール方法詳細](./SDK-Introduction.md)

> [!IMPORTANT]
> 項目の左に [ <img src="./assets/env/M_download.png" height="12"> ]️ がある場合は、先にクリックしてインストールすること。

### Emulator(Pixel7)インストール
　<img src="./assets/env/M_IDE_AndroidStudio.png" height="20">  
　Menu ｢ <img src="./assets/env/M_AS_menu-button.png" height="14">️ ｣
 <img src="./assets/env/M_click.png" height="12"> ⇒ ｢Tools」 ⇒ 「SDK Manager」
 <img src="./assets/env/M_click.png" height="12"> ⇒  スマートフォンイメージ インストール   
　<img src="./assets/prtsc/M_AS_01_DeviceManagerRun.png" height="48" >
<img src="./assets/env/M_allow-R.png" height="20" align="top">
<img src="./assets/prtsc/M_AS_Device-add.png" height="48">
<img src="./assets/env/M_click.png" height="12" align="top">
<img src="./assets/env/M_allow-R.png" height="20" align="top">
<img src="./assets/prtsc/M_AS_Device-add-CreateVirtualDevice.png" height="48" align="top">
<img src="./assets/env/M_click.png" height="12" align="top">

#### 設定内容
|Item|Content|Remarks|
|:---|:---|:---|
|name|Pixel 7||
|API|API 36.1 "Baklava";Android 16||
|Services|Google Play Store||
|System Image|16KB Page Size Google Play Intel x86 64 Atom System Image||

　<img src="./assets/env/M_link.png" height="14"> [Device設定方法詳細](./Device-Introduction.md)
> [!IMPORTANT]
> 　項目の左に <img src="./assets/env/M_download.png" height="14"> がある場合は、先にクリックしてインストールすること。

### Android ライセンス承認
<details>   								<!-- Segment row count: 11 rows -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-android-licenses.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter doctor --android-licenses
```  
</details>  

　[<img src="./assets/prtsc/M_AS_01_flutter-doctor-LicenseApproval.png" width="580">](./assets/prtsc/M_AS_01_flutter-doctor-LicenseApproval.png)  
　以降、何度か"Accept? (y/N)"と聞かれるので、全て\<y\>で **OK**  

　<img src="./assets/prtsc/M_AS_01_flutter-doctor-LicenseApproval-ok.png">  
　上記メッセージを確認できれば承認完了。

### 完了確認
　次の状態になっていれば、開発環境の構築は完了です。
- `flutter doctor -v` でFlutter及びAndroid toolchainが認識される
- Androidライセンスが承認済み
- Android Studioから Pixel7 Emulatorを起動できる
- VS CodeでFlutter及びDart拡張機能が有効になっている

## Emulator起動														<!-- 01-05 -->
　<img src="./assets/env/M_IDE_AndroidStudio.png" height="20">  
　Menu ｢ <img src="./assets/env/M_AS_menu-button.png" height="14">️ ｣
<img src="./assets/env/M_click.png" height="12">️ ⇒ ｢Tools」 ⇒ ｢Device Manager｣
<img src="./assets/env/M_click.png" height="12">️ ⇒  
　<img src="./assets/prtsc/M_AS_menu-bar_Device_Maneger.png" height="48">  

　｢Device Manager｣
<img src="./assets/env/M_click.png" height="12">️  　　　　　｢**＋**｣
<img src="./assets/env/M_click.png" height="12">️  　　　　　　　　　　　 ｢Create Virtual Device｣
<img src="./assets/env/M_click.png" height="12">️  
　<img src="./assets/prtsc/M_AS_01_DeviceManagerRun.png" width="148" align="top"> 
　<img src="./assets/env/M_allow-R.png" height="20" align="top"> 
　<img src="./assets/prtsc/M_AS_01_DeviceManagerRun-pixel7.png" width="148" align="top">
　<img src="./assets/env/M_allow-R.png" height="20" align="top"> 
　[<img src="./assets/prtsc/M_AS_01_Emulator-Pixel7-1st.png" height="128" align="top">](./assets/prtsc/M_AS_01_Emulator-Pixel7-1st.png)
