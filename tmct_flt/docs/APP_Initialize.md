<p akugb=:keft>  
	<img src="./assets/APP_Initialize_titlebar_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/APP_Initialize_titlebar_light.png#gh-light-mode-only" alt="banner light">  
</p>  
  
# 開発環境初期化  
　インストール済みの **Flutter** と **Android Studio**  及びその環境、生成物の削除を行います。  

> [!NOTE]  
> ※ 凡例  
> 　<img src="./assets/env/M_win.png" height="14"> デスクトップ、️<img src="./assets/env/M_click.png" height="14">：マウスクリック、 <img src="./assets/env/M_button.png" height="14">：ボタン、<img src="./assets/env/M_key.png" height="14">：Press the Key、<img src="./assets/env/M_return.png" height="14">：Enter key press、  
> 　<img src="./assets/env/M_tap.png" height="14">：タップ、<img src="./assets/env/M_text.png" height="14">：テキスト、**a** / **b**：選択(**a** or **b**)、<img src="./assets/env/M_menu.png" height="14">：ウィンドウ/メニュー/フォーム、⇒：次動作、<img src="./assets/env/M_comment.png" height="11">：コメント、  
>　<img src="./assets/env/M_term.png" height="14">：ターミナル、<img src="./assets/env/M_copy.png" height="14">：クリックでText表示 (コピー可能)  

> [!NOTE]  
> 縮小表示されている画像は <img src="./assets/env/M_click.png" height="14"> で拡大されます (マウスカーソルが <img src="./assets/env/M_info.png" height="14"> になる画像が縮小表示画像です)。  
> <img src="./assets/env/M_caution.png" height="14"> 本章のコマンドは全て　<img src="./assets/env/M_term.png" height="14"> <img src="./assets/env/M_SHELL_PoewrShell.png" height="14">　にて実行しています。

> [!CAUTION]  
> この手順では、Flutter SDK、Android SDK、Android Emulator、  
> Android Studioの設定及び各種キャッシュを削除します。  
>  
> **既存の Flutter / Android 開発環境を継続して使用する場合は、  
> この手順を実行しないでください。**  
>  
> 削除したSDK、仮想端末及び設定は元に戻せません。  
> 必要なプロジェクト、設定、仮想端末及びファイルがある場合は、  
> 必ず事前にバックアップしてください。  
  
## 環境確認                                                     <!-- APP -->  
### 　Flutter SDK 環境                                          <!-- APP-01 -->  
　現在の開発環境確認  
　Path確認  
<details>   												<!-- where.exe flutter -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_whereexe-flutter.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
where.ese flutter  
```  
</details>  



　<img src="./assets/prtsc/M_ER_APP_where-flutter.png">  
  
　Flutter確認  
<details>   												<!-- flutter doctor -v -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-doctor-v.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter doctor -v  
```  
</details>  

　[<img src="./assets/prtsc/M_ER_APP_flutter-doctor-v.png" width="580">](./assets/prtsc/M_ER_APP_flutter-doctor-v.png)  
  
### 　Android 環境  
#### 　既存環境確認  
<details>   												<!-- Get-ChildItem Env -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_get-childitem-env.png" align="top">  
</summary>  
  
```  
Get-ChildItem Env |
    Where-Object {
        $_.Name -match 'ANDROID|JAVA|FLUTTER|DART|GRADLE|PUB'
    } |
    Sort-Object Name
```  
</details>  
  
　<img src="./assets/prtsc/M_ER_APP_get-childitem-env.png">  
  
#### 　Path確認  
<details>   												<!-- env:Path -split -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_env-Path-split.png" align="top">  
</summary>  
  
```
$env:Path -split ';' |
    Where-Object {
        $_ -match 'flutter|android|dart|gradle|java'
    }
```  
</details>  

　<img src="./assets/prtsc/M_ER_APP_env-path-split.png">  
  
## 環境削除								    				    <!-- APP-02 -->  
  
> [!WARNING]  
> 本章以降のコマンドは対象ディレクトリを確認してから実行してください。  
> 環境によってインストール先が異なる場合があります。  
  
### プロジェクト内のBuild生成物 削除  
  
<details>   												<!-- Get-ChildItem Env -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-clean.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter clean  
```  
</details>  
  
　# 正常終了はメッセージ無し  
  
> [!NOTE]  
>　<img src="./assets/prtsc/M_ER_APP_flutter-clean-info.png">  
> 上記記メッセージが出力された場合はアップグレード  
><details>   												<!-- Get-ChildItem Env -->
><summary>
><img src="./assets/env/M_copy.png" height="14">  
><img src="./assets/cmd/M_CMD_flutter-upgrade.png">
>&nbsp;<img src="./assets/env/M_return.png" height="12">  
></summary>  
>  
>```  
>flutter clean  
>```  
></details>  
>
><img src="./assets/prtsc/M_ER_APP_flutter-upgrade-sum.png">  
>
>[<img src="./assets/env/M_link.png" height="14"> メッセージ全文](./assets/prtsc/APP-02-00b_flutter-upgrade-all.png)  
  
### Android Studio 削除  
　EmulatorはAndroid Studioから削除  
　残骸が残っていたら削除 : %USERPROFILE%\.android\avd  
　🖥️左下｢ <img src="./assets/env/M_ICON_Windows1.png" height="16">️  ]⬇️ ⇒ ｢ <img src="./assets/env/M_MENU_AndroidStudio1.png"> ｣右⬇️ ⇒ ｢ <img src="./assets/env/M_MENU_trash-can.png"> ｣⬇️ ⇒  
　｢⚙️Window｣ ⇒ ｢　<img src="./assets/env/M_MENU_AndroidStudio2.png" height="20">　｣⬇️ ⇒ 「アンインストール」  
  
### Android Studio 削除確認 残項目があれば強制削除  
<details>   														<!-- Test-Path -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_test-path.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter clean  
```  
</details>  

　<img src="./assets/prtsc/M_ER_true.png">　# 環境が存在する  
<details>   										<!-- Remove-Item -Recurse -Force -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_remove-item-c-AndroidStudio.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Remove-Item -Recurse -Force "C:\Program Files\Android\Android Studio" 
```  
</details>  
　# メッセージ無し　`※正常に削除された場合、メッセージは出力されない  
  
### Android SDK 環境 削除  
<details>   									<!-- remove-item-localappdata-sdk -->  
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_remove-item-localappdata-sdk.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter clean  
```  
</details>  

　[<img src="./assets/prtsc/M_ER_APP_remove-item-localappdata-sdk1.png" width="580">](./assets/prtsc/M_ER_APP_remove-item-localappdata-sdk1.png)  
　　　　　　　　　　　<img src="./assets/env/M_allow-D.png" height="20">  
　[<img src="./assets/prtsc/M_ER_APP_remove-item-localappdata-sdk2.png" width="580">](./assets/prtsc/M_ER_APP_remove-item-localappdata-sdk2.png)  
　　　　　　　　　　　<img src="./assets/env/M_allow-D.png" height="20">
　[<img src="./assets/prtsc/M_ER_APP_remove-item-localappdata-sdk3.png" width="580">](./assets/prtsc/M_ER_APP_remove-item-localappdata-sdk3.png)  
　残環境 **：** $HOME\AppData以下はこの後削除します。  
  
### $HOMEの環境 削除  
<details>   										<!-- get-childitem-android-sdk -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_get-childitem-env-userprofile-android.png.png">  
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter clean  
```  
</details>  

　[<img src="./assets/prtsc/M_ER_APP_Get-ChildItem-android.png" width="580">](./assets/prtsc/M_ER_APP_Get-ChildItem-android.png)  
  
<details>   				<!-- Remove-Item -Recurese -Force USERPROFILE-android -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_remove-item-env-userprofile.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter clean  
```  
</details>  
　# メッセージ無し　`※正常に削除された場合、メッセージは出力されない`  
  
### 設定 及び キャッシュ 削除  
> [!IMPORTANT]  
> Android Studioで生成されたディレクトリは "**AndroidStudio** "、"**Android Studio**"等のバリエーションが存在する。  
> **Get-ChildItem** で検索出来たディレクトリそれぞれに適した **Remove-Item** コマンドを実行  
#### Local環境/キャッシュ  
　🗁 : $HOME\AppData\Local\Google\  
<details>   							<!-- Get-ChildItem env:LOCALAPPDATA-Google -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_get-childitem-localappdata-google.png">u
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Get-ChildItem "$env:LOCALAPPDATA\Google" -Directory -Filter "Android*"  
```  
</details>  

　<img src="./assets/prtsc/M_ER_APP_Get-ChildItem-Loal-Android.png" height="80">
<details>   							<!-- Remove -Item-LOCALAPPDATA-google -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_remove-item-env-userprofile.png">  
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Remove-Item -Recurse -Force "$env:USERPROFILE\.android"  
```  
</details>  

　# メッセージ無し　`※正常に削除された場合、メッセージは出力されない`  
　🗁 : $HOME\AppData\Roaming\Google\  
<details>   				    			<!-- Get-ChildItem env:APPDATA-Google -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_get-childitem-env-appdata-google.png">u
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Get-ChildItem "$env:APPDATA\Google" -Directory -Filter "Android*"  
```  
</details>  

　[<img src="./assets/prtsc/M_ER_APP_Get-ChildItem-env-appdata-google.png" height="80">](./assets/prtsc/M_ER_APP_Get-ChildItem-env-appdata-google.png)  
<details>   					                <!-- Remove-Item-APPDATA-google -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_remove-item-env-appdata-google.png">  
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Remove-Item -Recurse -Force "$env:APPDATA\"  
```  
</details>  
  
　# メッセージ無し　`※正常に削除された場合、メッセージは出力されない`  
#### Gradleキャッシュ 削除  
<details>   				    			<!-- Get-ChildItem env:USERPROFILE-gradle -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_get-childitem-env-userprofile-gradle.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Get-ChildItem "$env:APPDATA\Google" -Directory -Filter "Android*"  
```  
</details>  

　<img src="./assets/prtsc/M_ER_APP_Get-ChildItem-env-userprofile-grable.png" height="160">  
  
<details>   					                <!-- Remove-Item-APPDATA-google -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_remove-item-env-userprofile-gradle.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Remove-Item -Recurse -Force "$env:USERPROFILE\.gradle"
```  
</details>  

　[<img src="./assets/prtsc/M_ER_APP_remove-item-env-userprofile-grable.png" height="18">](./assets/prtsc/APP-02-06_Remove-Item-grable.png)  
　# プログレスバーの消滅で削除完了  
  
### Flutter SDK 削除  
<details>   		            			                <!-- where.exe flutter -->  
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_whereexe-flutter.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
where.exe flutter  
```  
</details>  

　<img src="./assets/prtsc/M_ER_APP_whereexe-flutter.png">  
　他のメッセージが無く、プロンプトが表示されれば削除完了  
<details>   		                        <!-- Get-ChildItem C:\Develop\flutter" -->  
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_get-childitem-develop-flutter.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Get-ChildItem "C:\Develop\flutter"
```  
</details>  

　[<img src="./assets/prtsc/M_ER_APP_get-childItem-develop-flutter.png" width="580">](./assets/prtsc/M_ER_APP_get-childItem-develop-flutter.png)  
<details>                   <!-- Remove-Item -Recurse -Force "C:\Develop\flutter"  -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_remove-item-c-develop-flutter.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Remove-Item -Recurse -Force "C:\Develop\flutter"  
```  
</details>  


　[<img src="./assets/prtsc/M_ER_APP_remove-item-c-develop-flutter.png" width="580">](./assets/prtsc/M_ER_APP_get-childItem-develop-flutter.png)  
　# プログレスバーの消滅で削除完了  

## Flutter & Dart 設定･キャッシュ 削除  
<details>                   <!-- Remove-Item -Recurse -Force "C:\Develop\flutter"  -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_dartpaths-foreach.png" align="top">
</summary>  
  
```  
$dartPaths = @(
    "$env:APPDATA\.dart",
    "$env:APPDATA\.dart-tool",
    "$env:LOCALAPPDATA\.dartServer"
) |
foreach ($path in $dartPaths) {
    if (TestPath $path) {
        Remove-Item -Recurse -Force $path
    }
}
```  
</details>  

> [!NOTE]  
> 実行メッセージが一瞬表示される。  
> 他のメッセージが無く、プロンプトが表示されれば削除完了  
  
<details>                   <!-- Get-ChildItem "$env:LOCALAPPDATA\Pub\Cache" -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_get-childitem-env-localappdata-pub-cache.png">  
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Get-ChildItem "$env:LOCALAPPDATA\Pub\Cache"
```  
</details>  

　<img src="./assets/prtsc/M_ER_APP_get-childItem-env-Localappdata-pub-chche.png" width="580">
<details>                      <!-- Remove-Item "$env:LOCALAPPDATA\Pub\Cache" -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_remove-item-env-localappdata-pub-cache.png">  
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\Pub\Cache" -ErrorAction SilentlyContinue
```  
</details>  

　<img src="./assets/prtsc/M_ER_APP_remove-item-env-localappdata-pub-chece.png" height="18">  
　# プログレスバーの消滅で削除完了  
　<img src="./assets/env/M_folder.png" height="12"> : " **C:\Development\flutter** " を削除  
  
## 再起動 ⇒ 削除確認                                           <!-- APP-03 -->  
### 削除対象  
　　　･Windows 環境変数  
　　　･Git for Windows  
　　　･VS Code 機能拡張   
　　　･Flutter SDK  
　　　･Android Studio  
　　　･Android SDK  
　　　･Android Emulator  
  
<details>                                     <!-- Get-ChildItem $env:USERPROFILE -->  
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_get-childitem-env-userprofile-directory.png" align="top">  
　<img src="./assets/env/M_get-childitem-userprofile.png">  
</summary>  
  
```  
Get-ChildItem "$env:USERPROFILE" -Force -Directory |
    Where-Object {
        $_.Name -match 'android|flutter|dart|gradle'
    }
```  
</details>  

　<img src="./assets/prtsc/M_ER_APP_remove-item-userprofile-android.png">  
<details>                             <!-- Remove-Item '$env:USERPROFILE\上記DIR' -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_remove-item-env-userprofile-dir.png">  
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Remove-Item -Recurse -Force "$env:USERPROFILE\上記DIR"
```  
</details>  
　# 正常に削除できればメッセージ無し  

<br>
<details>                                     <!-- Get-ChildItem $env:USERPROFILE -->  
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_get-childitem-env-localappdata.png" align="top">  
</summary>  
  
```  
Get-ChildItem "$env:LOCALAPPDATA" -Force -Directory |
    Where-Object {
        $_.Name -match 'android|flutter|dart|gradle'
    }
```  
</details>  

<details>                             <!-- Remove-Item '$env:LOCALAPPDATA\上記DIR' -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_remove-item-env-localappdata.png">  
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Remove-Item -Recurse -Force "$env:LOCALAPPDATA\上記DIR"
```  
</details>  
  
> [!NOTE]  
> Get-ChidlItemで抽出されたDIRを個別に削除  
  
<details>                                     <!-- Get-ChildItem $env:APPDATA -->  
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_get-childitem-env-appdata.png" align="top">  
</summary>  
  
```  
Get-ChildItem "$env:APPDATA" -Force -Directory |
    Where-Object {
        $_.Name -match 'android|flutter|dart|gradle'
    }
```  
</details>  

　<img src="./assets/prtsc/M_ER_APP_get-childitem-env-appdata.png">

<details>                             <!-- Remove-Item '$env:APPDATA\上記DIR' -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_remove-item-env-localappdata.png">  
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
Remove-Item -Recurse -Force "$env:APPDATA\上記DIR"
```  
</details>  

　# 正常に削除できればメッセージ無し  
  
#### 残DIRの削除で初期化完了

