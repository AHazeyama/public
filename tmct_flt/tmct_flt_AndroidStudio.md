<p align="left">  
	<img src="./assets/Tutorial_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/GitHub_description_light.png#gh-light-mode-only" alt="banner light">  
</p>  
  
# OverView  
## 目的 : OS不問のMobileアプリケーション開発<br> 内容 : **Android** / **iOS** 両用開発環境を構築し、アプリケーション開発を行う  
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

## リハビリテーション用タイマー&カウンター[tmct]作成手順  

> [!NOTE]
> 各画像は⬇️で拡大します。
### インストール  
　既に現環が存在する場合は末尾の ｢**現環境削除**｣ 項参照  
### 環境確認  
　![](./assets/env/M_SHELL_PWSH_10.png)  
　```pwsh  
git --version <⏎>  
　```  
　　![](./assets/prtsc/01-01_git-version.png)  
　```pwsh  
code --version <⏎>  
　```  
　　![](./assets/prtsc/01-02_code-version.png)  

### Flutter インストール  
　　👇ボタンより FlutterSDK バンドルをダウンロード  
　　[<img src="./assets/prtsc/01-03_download-button.png">](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.44.8-stable.zip)  🔗[Install Flutter manually](https://docs.flutter.dev/install/manual)  
　解凍して任意のフォルダへ保存　　推奨：🗁 C:\Develop\  

### 環境変数登録
　画面左下の ![](./assets/prtsc/01-04_search-bar.png) へ"環境変数"を入力して![](./assets/prtsc/01-05_EnvIcon.png) を⬇️  
　｢･･･のユーザー環境変数(<u>U</u>)｣ ⇒ ｢Path｣ ⇒ [編集(<u>E</u>)…] ⇒ ｢環境変数名の編集｣/[新規] ⇒ 追加 "C:\Develop\flutter\bin"  
　　　[<img src="./assets/prtsc/01-06_ControlPanel.png" width="96">](./assets/prtsc/01-06_ControlPanel.png)  

### パス確認  
　![](./assets/env/M_SHELL_PWSH_10.png)  
　```
　flutter --verison <⏎>
　```  
　　　[<img src="./assets/prtsc/01-07_FlutterDiag1st.png" width="96">](./assets/prtsc/01-07_FlutterDiag1st.png)  

  
### VS Code への機能拡張追加  
　![](./assets/env/M_EDT_VSCode_10.png)  
　左ツールバーの ![](./assets/prtsc/01-08_Extetion1.png) ⬇️ 、又は ⚙️⬇️ ⇒ [機能拡張　Ctrl+Shift+X]⬇️ ⇒  

　[<img src="./assets/prtsc/01-10_VSC-Flutter-Ext.png" width="192">](./assets/prtsc/01-10_VSC-Flutter-Ext.png) **/** [<img src="./assets/prtsc/01-11_VSC-Dart-Ext.png" width="192">](./assets/prtsc/01-11_VSC-Dart-Ext.png) をインストール  

### Flutter初回診断  
　![](./assets/env/M_SHELL_PWSH_10.png)  
　```  
flutter doctor -v <⏎>  
　```  
　　　[<img src="./assets/prtsc/01-07_FlutterDiag1st.png" width="96">](./assets/prtsc/01-07_FlutterDiag1st.png)  
> [!IMPORTANT]  
> この時点ではAndroidにエラーが出ていても問題無し  
> Flutterがインストールされていれば **OK**  
  
### AndroidStudio インストール  
　![](./assets/env/M_IDE_AndroidStudo_20.png)  
　インストーラ入手  
　　🔗[Android Studio](https://developer.android.com/studio?hl=ja)　※使用許諾の必要があるため、リンク先の ![](./assets/prtsc/02-01_download-button2.png) よりダウンロード  
　　![](./assets/prtsc/02-02_Installer-icon.png) W⬇️  
　　デフォルト設定でインストール  
　　SDKインストール先 : 🗁 C:\Users\ユーザー名\AppData\Local\Android\Sdk  

|Welcome|Choose Components|Configuration Settings|Choose StartMenu|Installing ⇒ <br>Complete|Completion Android Studio|  
|:--: |:--: |:--: |:--: |:--: |:--:|  
|[<img src="./assets/prtsc/02-03/02-03-01_Welcome.png" width="48">](./assets/prtsc/02-03/02-03-01_Welcome.png)|[<img src="./assets/prtsc/02-03/02-03-02_ChooseComponents.png" width="48">](./assets/prtsc/02-03/02-03-02_ChooseComponents.png)|[<img src="./assets/prtsc/02-03/02-03-03_Configuration.png" width="48">](./assets/prtsc/02-03/02-03-03_Configuration.png)|[<img src="./assets/prtsc/02-03/02-03-04_ChooseStartMenu.png" width="48">](./assets/prtsc/02-03/02-03-04_ChooseStartMenu.png)|[<img src="./assets/prtsc/02-03/02-03-05_Installing.png" width="48">](./assets/prtsc/02-03/02-03-05_Installing.png)⇒[<img src="./assets/prtsc/02-03/02-03-06_InstallationConplete.png" width="48">](./assets/prtsc/02-03/02-03-06_InstallationConplete.png)|[<img src="./assets/prtsc/02-03/02-03-07_CompletionAndroidStudio.png" width="48">](./assets/prtsc/02-03/02-03-07_CompletionAndroidStudio.png) |
|[<u>N</u>ext>]⬇️|[ <u>N</u> ext]⬇️|[<u>N</u>ext>⬇️]|[<u>I</u>nstall]⬇️|⌛wait ⇒ [<u>N</u>ext>]⬇️|[Finish]⬇️|  
---

### AndroidStudio セットアップ

|Welcome|Install Type|Verify Settings|License Agreement|DwnloadingCmp|
|:---:|:---:|:---:|:---:|:---:|  

|[<img src="./assets/prtsc/02-04/02-04-01_welcome.png" width="48">](./assets/prtsc/02-04/02-04-01_welcome.png)
|[<img src="./assets/prtsc/02-04/02-04-02_InstallType.png" width="48">](./assets/prtsc/02-04/02-04-02_InstallType.png)
|[<img src="./assets/prtsc/02-04/02-04-03_VerifySettings.png" width="48">](./assets/prtsc/02-04/02-04-03_VerifySettings.png)
|[<img src="./assets/prtsc/02-04/02-04-04_LicenseAgreement1.png" width="48">](./assets/prtsc/02-04/02-04-04_LicenseAgreement1.png) ⇒ 
[<img src="./assets/prtsc/02-04/02-04-05_LicenseAgreement2.png" width="48">](./assets/prtsc/02-04/02-04-05_LicenseAgreement2.png)
|[<img src="./assets/prtsc/02-04/02-04-06_DownloadingComponents1.png" width="48">](./assets/prtsc/02-04/02-04-06_DownloadingComponents1.png) ⇒ 
|[<img src="./assets/prtsc/02-04/02-04-07_DownloadingComponents2.png" width="48">](./assets/prtsc/02-04/02-04-07_DownloadingComponents2.png)|


|[<u>N</u>ext]⬇️|[⦿Standard]⬇️ ⇒ <br>[<u>N</u>ext]⬇️|[<u>N</u>ext]⬇️|[⦿Accept]⬇️ ⇒ <br>[<u>N</u>ext]⬇️|wait… [<u>F</u>inish]⬇️|  
---

### Project 作成
|Welcome|New Project|
|:---:|:---:|
|[<img src="./assets/prtsc/06-01_Welcome-to-AndroidStudio.png" width="64">](./assets/prtsc/06-01_Welcome-to-AndroidStudio.png) | [<img src="./assets/prtsc/06-02_New-Project.png" width="64">](./assets/prtsc/06-02_New-Project.png) | 



　　![](<image src="./assets/prtsc/04-03_Welcome-to-AndroidStudio.png" width="256"> )  
  
### SDK Command_LIne_Tools インストール  
　![](./assets/env/M_IDE_AndroidStudo_20.png)  
　```  
Menu「☰｣⬇️ ⇒ ｢Tools」 ⇒ 「SDK manager」⬇️ ⇒  
　```  
　　<img src="./assets/prtsc/07-01_SDK-Maneger0.png" width="256">  

> [!IMPORTANT]
> 必要項目の左に [![](./assets/prtsc/07-00_parts.png)]️ がある場合は、先にクリックしてインストールすること。  

| | | | | |
|:---:|:---:|:---:|:---:|:---:|
|[OK]⬇️|**▢** Show Package⬇️ Details|[<u>A</u>pply]⬇️ ⇒ [OK]⬇️|[OK]⬇️|[OK]⬇️|
---

### Android ライセンス承認  
　![](./assets/env/M_SHELL_PWSH_10.png)  
```pwsh
flutter doctor --android-licenses <⏎>
```
　![](./assets/prtsc/08-01_ExecutionResult1.png)  
　以降、何度か"Accept? (y/N)"と聞かれるので、全て<y>で **OK**  
　![](./assets/prtsc/08-01_ExecutionResult1.png)  
　上記メッセージを確認。　
  
### 仮想端末登録  
　![](./assets/env/M_IDE_AndroidStudo_20.png)  
　```  
Menu「☰｣⬇️ ⇒ ｢Tools」 ⇒ 「Device manager」⬇️ ⇒  
　```  
　　<img src="./assets/prtsc/07-01_SDK-Maneger0.png" width="256">  

> [!IMPORTANT]
> 必要項目の左に [![](./assets/prtsc/07-00_parts.png)]️ がある場合は、先にクリックしてインストールすること。  

|Welcome|Install Type|Verify Settings|License Agreement|Downloading Components|
|:---:|:---:|:---:|:---:|:---:|
|[<u>N</u>ext]⬇️|[<u>N</u>ext]⬇️|[<u>N</u>ext]⬇️|｢ ⦿Accept ｣️⬇️ ⇒ [<u>N</u>ext]⬇️|[<u>F</u>inish]⬇️
---

<br>  
<br>  
<br>  
<br>  
<br>  
<br>  
<br>  
<br>  
<br>  
<br>  
<br>  
<br>  
<br>  
![](./assets/02_SDKmanager.png)  
　右下[Apply]⬇️ ⇒ [OK]⬇️  
  
### Android ライセンス確認  
　![](./assets/env/M_SHELL_PWSH_10.png)  
　```  
flutter doctor --android-licenses <⏎>  
　```  
　![](./assets/03_Outputprtsc.png)  
  
### Emulator 起動  
　![](./assets/env/M_IDE_AndroidStudo_20.png)  
　```  
Menu「☰｣⬇️ ⇒ ｢Tools」 ⇒ 「SDK manager」⬇️ ⇒  
　```  
　![](./assets/04_DeviceManager.png)  
  
  
  
  

　　MPLUSRoundedの入手  
　　[🔗Google Fonts!](./assets/prtsc/99-99-99_DownloadMPLUSRounded.png) から ![](./assets/prtsc/99-99-99_DownloadMPLUSRounded.png) を⬇️してダウンロード  

  
  
## VisualStudio起動  
## UIモジュール作成  
## イベント処理モジュール作成  
## ロジックモジュール作成  
## クラス指定明確化  
## プロジェクトファイル変更(WinFormsの有効化、単体起動exe作成コマンド)  
## テスト環境構築  
## バージョン管理登録(Git)  
### Git README.md 編集  
## ターミナル表示  
### Test環境構築  
## 動作確認  
### アプリ起動  
### 試行 ( 🗀test1st で実施 )  
## 単体アプリ作成  
### バージョン指定  
### icon 作成  
### Visual Studio  
### Visual Studio使わない方法  
## Git 更新 (README.md、exrm.exe)  
　｢VisualStudio｣  
　　右下の｢🖋️アイコン｣ ⬇️  
　｢Git 変更｣  
　　変更 / 追加したファイルをフォーカスし｢＋｣ ⬇️  
　　　｢メッセージを入力してください <必須>｣ にコメント入力  
　　[すべてをコミット] ⬇️  
  
  
<br>  
<br>  
<br>  
<br>  
  
  
## 現環境削除(必要に応じて)  
### 環境変数消去
　![](./assets/env/M_SHELL_PWSH_10.png)
```pwsh
$env:Path -split ';' |
    Where-Object {
        $_ -match 'flutter|android|dart|gradle|java'
    } <⏎>
```
　　![](./assets/prtsc/99-01_Environmental-Variables.png)  
　　🖥️作業  
```
　　🪟｢🔍検索｣へ"**環境変数**"入力 ⇒ ｢環境変数を編集｣⬇️ ⇒  
　　🪟｢環境変数｣ ⇒ ｢…のユーザー環境変数(U)｣ ⇒ ｢Path｣⬇️ ⇒ [編集(E)...] ⇒   
　　🪟｢環境変数名の編集｣ / [新規]⬇️ ⇒ "C:\Develop\flutter\bin"追加 ⇒ [OK]⬇️ ⇒ [OK]⬇️  
```
　　[<img src="./assets/prtsc/99-02_EnvVal-delete.png" width="320">](./assets/prtsc/99-02_EnvVal-delete.png)  

### AndroidStudio 削除
| | | | | | | | |  
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|  
|[<img src="./assets/prtsc/99-03_AS-icon.png" width="48">](./assets/prtsc/99-03_AS-icon.png) | [<img src="./assets/prtsc/99-04_AS-uninstall.png" width="48">](./assets/prtsc/99-04_AS-uninstall.png) | [<img src="./assets/prtsc/99-05_AS-uninstall2.png" width="48">](./assets/prtsc/99-05_AS-uninstall2.png) | [<img src="./assets/prtsc/99-06_uninstall-msg.png" width="48">](./assets/prtsc/99-06_uninstall-msg.png) | [<img src="./assets/prtsc/99-07_AS-uninstall-dialog1.png" width="48">](./assets/prtsc/99-07_AS-uninstall-dialog1.png) | [<img src="./assets/prtsc/99-08_AS-uninstall-dialog2.png" width="48">](./assets/prtsc/99-08_AS-uninstall-dialog2.png) | [<img src="./assets/prtsc/99-09_AS-uninstall-dialog3.png" width="48">](./assets/prtsc/99-09_AS-uninstall-dialog3.png) | [<img src="./assets/prtsc/99-10_AS-uninstall-dialog4.png" width="48">](./assets/prtsc/99-10_AS-uninstall-dialog4.png) ⇒ [<img src="./assets/prtsc/99-11_AS-uninstall-dialog5.png" width="48">](./assets/prtsc/99-11_AS-uninstall-dialog5.png) |
| icon⬇️ | 右⬇️ ⇒<br>[ｱﾝｲﾝｽﾄｰﾙ]⬇️ | [ｱﾝｲﾝｽﾄｰﾙ]⬇️ | [ｱﾝｲﾝｽﾄｰﾙ]⬇️ | [<u>N</u>ext]⬇️| [<u>U</u>ninstall]⬇️ | [はい(<u>Y</u>)]⬇️ | [<u>C</u>lose]⬇️ |  

![<img src="./assets/prtsc/99-05_AS-uninstall2.png" widht="0">](./assets/prtsc/99-05_AS-uninstall2.png)  


![<img src="./assets/prtsc/99-05_AS-uninstall2.png" width="12">](./assets/prtsc/99-05_AS-uninstall2.png)



　🪟⬇️ ⇒ ![](./assets/prtsc/99-01_Environmental-Variables.png)右️⬇️ ⇒ 
