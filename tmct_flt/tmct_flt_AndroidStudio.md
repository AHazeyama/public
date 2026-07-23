<p align="left">
	<img src="./assets/Tutorial_dark.png#gh-dark-mode-only" alt="banner dark">
	<img src="./assets/GitHub_description_light.png#gh-light-mode-only" alt="banner light">
</p>

## OverView
目的 : OS不問のMobileアプリケーション開発  
内容 : **Android** / **iOS** 両用開発環境を構築し、アプリケーション開発を行う  
|Item|Content|
|:--|:--|
|OS|![](./assets/env/M_OS_Win11_20.png)|
|言語|![](./assets/env/M_LANG_Dart_20.png)|
|FrameWork|![](./assets/env/M_FW_Flutter_20.png)|
|IDE|![](./assets/env/M_IDE_AndroidStudo_20.png)|
|Editor|![](./assets/env/M_EDT_Vim_20.png)　　![](./assets/env/M_EDT_VSCode_20.png)|
|検証機材|![](./assets/env/M_Equip_XPERIA_10IV_20.png)|

※ 記号例
```
🪟:デスクトップ、⬇:マウスクリック、 [･･･]:ボタン、<･･･>:Press the Key、⇒:次動作、#･･･:コメント  
"･･･":テキスト、a/b:選択(a or b)、｢･･･｣:ウィンドウ/メニュー/フォーム、
```
<br>

## ファイル/フォルダーの排他的削除ツール [exrm]作成手順
### インストール
　既に現環が存在する場合は末尾の｢現環境削除｣参照  
　**Flutter**  
　　**SDK**と**VS Code**用プラグイン  
　　　🔗[Install Flutter manually](https://docs.flutter.dev/install/manual) /  [flutter_windows_x.xx.x-stable.zip]  
　　　**.zip** 解凍後、任意のフォルダへコピー  
　　　　推奨 : 🗁 C:\Develop\Flutter 　# 新規作成、管理者権限不要で参照しやすい位置  
　　🪟｢🔍検索｣へ"**環境変数**"入力 ⇒ ｢環境変数を編集｣⬇️ ⇒  
　　🪟｢環境変数｣ ⇒ ｢…のユーザー環境変数(U)｣ ⇒ ｢Path｣⬇️ ⇒ [編集(E)...] ⇒   
　　🪟｢環境変数名の編集｣ / [新規]⬇️ ⇒ "C:\Develop\flutter\bin"追加 ⇒ [OK]⬇️ ⇒ [OK]⬇️  
　　PowerShell再起動  

### インストール確認  
　![](./assets/env/M_SHELL_PWSH_10.png)  
　```pwsh
flutter --version <⏎>  
　```
![](./assets/message/01-01_Flutter--version.png)  
　```pwsh
dart --version <⏎>  
　```
![](./assets/message/01-02_Drt--version.png)  

### VS Code への機能拡張追加
　![](./assets/env/M_EDT_VSCode_10.png)  
　```
<^>+<⇧>+<x> ⇒ 左ペインで "Flutter" / "Dart" 検索 ⇒ Flatter / Dart インストール
　```
![](./assets/message/02-01_VSC-Flutter-Ext.png)　![](./assets/message/02-02_VSC-Dart-Ext.png)  

### Flutter初回診断
　![](./assets/env/M_SHELL_PWSH_10.png)  
　```
flutter doctor -v <⏎>
　```
![](./assets/message/03-01_flutter_doctor-v.png)  
> [!IMPORTANT]
> この時点ではAndroidにエラーが出ていても問題無し  
> Flutterがインストールされていれば **OK**  

### AndroidStudio インストール
　インストーラ入手 : [ [Download Android Studio Quail 2] ](https://developer.android.com/studio?hl=ja)  
　　![](./assets/message/04-01_android-studio-quail2-windows.exe.png)  
　　デフォルト設定でインストール  
　　SDKインストール先 : 🗁 C:\Users\ユーザー名\AppData\Local\Android\Sdk  
　　![](./assets/message/04-02_InstallItem.png)  

### SDK Command_LIne_Tools インストール
　![](./assets/env/M_IDE_AndroidStudo_20.png)  
　```  
Menu「☰｣⬇️ ⇒ ｢Tools」 ⇒ 「SDK manager」⬇️ ⇒  
　```  
| Welcome | InstallType | VerifySettings | LicenseAgree| DwnloadingCmp|
|:---:|:---:|:---:|:---:|:---:|
|[<img src="./assets/prtsc/04-03_Welcome.png" width="64">](./assets/prtsc/04-03_Welcome.png) |[<img src="./assets/prtsc/04-04_InstallType.png" width="64">](./assets/prtsc/04-04_InstallType.png) |[<img src="./assets/prtsc/04-05_VerifySettings.png" width="64">](./assets/prtsc/04-05_VerifySettings.png) |[<img src="./assets/prtsc/04-06_LicenseAgreement.png" width="64">](./assets/prtsc/04-06_LicenseAgreement.png) |[<img src="./assets/prtsc/04-07_EownloadingComponents1.png" width="64">](./assets/prtsc/04-07_EownloadingComponents1.png) ⇒ [<img src="./assets/prtsc/04-08_EownloadingComponents2.png" width="64">](./assets/prtsc/04-08_EownloadingComponents2.png)|
|[<u>N</u>ext] |[⦿Standard] ⇒ <br>[<u>N</u>ext] |[<u>N</u>ext] |[⦿Accept] ⇒ <br>[<u>N</u>ext] |wait… [<u>F</u>inish]|


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
　![](./assets/03_OutputMessage.png)  

### Emulator 起動  
　![](./assets/env/M_IDE_AndroidStudo_20.png)  
　```
Menu「☰｣⬇️ ⇒ ｢Tools」 ⇒ 「SDK manager」⬇️ ⇒  
　```  
　![](./assets/04_DeviceManager.png)  







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
### 現状確認
　![](./assets/env/M_SHELL_PWSH.png)  
```pwsh
where.exe flutter <⏎>
　　　　:　# Output Message
flutter doctor -v <⏎>
　　　　:　# Output Message
Get-ChildItem Env: Where-Object {
        $_.Name -match 'ANDROID|JAVA|FLUTTER|DART|GRADLE|PUB'
    } Sort-Object Name <⏎>
　　　　:　# Output Message
$env:Path -split ';' Where-Object {
        $_ -match 'flutter|android|dart|gradle|java'
    } <⏎>
　　　　:　# Output Message
```
