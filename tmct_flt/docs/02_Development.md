<p akugb=:keft>  
	<img src="./assets/02_Development_titlebar_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/02_Development_titlebar_light.png#gh-light-mode-only" alt="banner light">  
</p>  
  
# Mobileアプリケーション作成											<!-- 02 -->  
　リハビリテーション用カウントダウンタイマー&カウンター [**tmct_flt**] を作成します。  
　  
> [!NOTE]  
> 
> ※ 凡例  
> 　<img src="./assets/env/M_win.png" height="14"> デスクトップ、️<img src="./assets/env/M_click.png" height="14">：マウスクリック、 <img src="./assets/env/M_button.png" height="14">：ボタン、<img src="./assets/env/M_key.png" height="14">：Press the Key、<img src="./assets/env/M_return.png" height="14">：Enter key press、  
> 　<img src="./assets/env/M_text.png" height="14">：テキスト、**a** / **b**：選択(**a** or **b**)、<img src="./assets/env/M_menu.png" height="11">：ウィンドウ/メニュー/フォーム、⇒：次動作、<img src="./assets/env/M_comment.png" height="11">：コメント、  
>　<img src="./assets/env/M_term.png" height="14">：ターミナル、<img src="./assets/env/M_copy.png" height="14">：クリックでText表示 (コピー可能)  

> [!NOTE]  
> 縮小表示されている画像は <img src="./assets/env/M_click.png" height="14"> で拡大されます (マウスカーソルが <img src="./assets/env/M_info.png" height="14"> になる画像が縮小表示画像です)。  
> <img src="./assets/env/M_caution.png" height="14"> 本章のコマンドは全て　<img src="./assets/env/M_term.png" height="14"> <img src="./assets/env/M_SHELL_PoewrShell.png" height="14">　にて実行しています。

## Coding														<!-- 02-01 -->  
　コーディング過程は省略。  
　ソースコード[tmct_flt]は下記参照。  
| Created file | <img src="./assets/env/M_folder.png" height="14"> Location |  
|:---|:---|  
| [<img src="./assets/env/M_link.png" height="14"> main.dart](https://github.com/AHazeyama/public/blob/main/tmct_flt/lib/main.dart) | Project_dir \ lib \ |  
| [<img src="./assets/env/M_link.png" height="14"> pubspec.yaml](https://github.com/AHazeyama/public/blob/main/tmct_flt/pubspec.yaml) | Project_dir \ |  
  
## アプリケーションのインストール									<!-- 02-02 -->  
#### 開発環境確認  
<details>   								<!-- flutter doctor -v -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-doctor-v.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter doctor -v
```  
</details>  

　[<img src="./assets/prtsc/m_ER_02_flutter-doctor-v.png" width="580">](./assets/prtsc/M_ER_02_flutter-doctor-v.png)  
  
  
<details>   								<!-- flutter devices -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-devices.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter devices
```  
</details>  

　[<img src="./assets/prtsc/M_ER_02_flutter-devices.png" width="580">](./assets/prtsc/M_ER_02_flutter-devices.png)  
  
#### ファイルバックアップ  
　｢Coding｣で作成したファイルをバックアップ。  
  
#### Androidフォルダ生成  
<details>   	<!-- flutter create --platforms=android --project-name "PRJ_name" -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-create.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter create --platforms=android --project-name "PRJ_name"  
```  
</details>  

　[<img src="./assets/prtsc/M_ER_02_flutter-create.png" width="580">](./assets/prtsc/M_ER_02_flutter-pub-get.png)  
  
#### パッケージ取得  
<details>   												<!-- flutter pub get -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-pub-get.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter pub get  
```  
</details>  
　<img src="./assets/prtsc/M_ER_02_flutter-pub-get.png">  

　  
#### アイコン生成  
　アイコンファイル追加  
<details>   					<!-- flutter pub add --dev flutter_launcher_icons -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-pub-run.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter pub add --dev flutter_launcher_icons  
```  
</details>  

　[<img src="./assets/prtsc/M_ER_02_dart-run-flutter_luncher_icons.png" width="580">](./assets/prtsc/M_ER_02_dart-run-flutter_luncher_icons.png)  
  
　アイコンファイル登録  
<details>   								<!-- dart run flutter_launcher_icons -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_dart-run-flutter-launcher-icons.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
dart run flutter_launcher_icons  
```  
</details>  
　[<img src="./assets/prtsc/M_ER_02_dart-run-flutter_luncher_icons.png" width="580">](./assets/prtsc/M_ER_02_dart-run-flutter_luncher_icons.png)  

  
  
> [!NOTE]  
> [<img src="./assets/prtsc/M_ER_02_dart-run-flutter_luncher_icons_warn.png" wkdth="580">](./assets/prtsc/02-02-06_dart-run-flutter_luncher_icons_warn.png)  
> iOS環境を作成していない場合、上記Warningが出力される。  
> 原因はiconファイルのフォルダ階層かファイル名の不一致。  
> またはpubspec.yamlで"ios:**True**"になってる ⇒ **False**へ変更。  
> <img src="./assets/prtsc/M_SRC_02_dart-run-flutter_luncher_icons_yaml.png">  
  
　本チュートリアルでは自動生成されたサンプルテストを使用しないため、testフォルダを削除します。  
　　<img src="./assets/env/M_folder.png" height="14"> : .\ Project_dir \  TEST  
<details>   												<!-- flutter analyze -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-analyze.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter analyze  
```  
</details>  
  
<img src="./assets/prtsc/M_ER_02_flutter-analyze.png">  

> [!NOTE]  
> 参考:TESTフォルダを削除しなかった場合のメッセージ  
> [<img src="./assets/prtsc/M_ER_02_flutter-analyze-error.png" width="580">](./assets/prtsc/M_ER_02_flutter-analyze-error.png)  
  
#### インストール  
　Emulator 確認 (FlutterからAndroid StudioのEmulatorが操作可能かを確認)  
<details>   												<!-- flutter devices -->  
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-devices.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter devices  
```  
</details>  

　[<img src="./assets/prtsc/M_ER_02_flutter-devices2.png" width="580">](./assets/prtsc/M_ER_02_flutter-devices2.png)  
  
　Emulator へインストール   
<details>   										<!-- flutter run emulator-5554 -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-run-emulator.png">  
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter run emulator-5554  
```  
</details>  

　[<img src="./assets/prtsc/M_ER_02_flutter-run-emulator-5554.png" width="580">](./assets/prtsc/02-02-10_flutter-run-emulator-5554.png)　　  
  
　Emulator表示の遷移  
|Initial|Installing...|Running|After execution|  
|:---|:---|:---|:---|  
|[<img src="./assets/prtsc/M_IMG_02_emulator.png" height="256"> ](./assets/prtsc/M_IMG_02_emulator.png)| [<img src="./assets/prtsc/M_IMG_02_emulator-start.png" height="256"> ](./assets/prtsc/M_IMG_02_emulator-start.png)| [<img src="./assets/prtsc/M_IMG_02_emulator-run.png" height="256">](./assets/prtsc/M_IMG_02_emulator-run.png)| [<img src="./assets/prtsc/M_IMG_02_emulator-after.png" height="256">](./assets/prtsc/M_IMG_02_emulator-after.png)|  
  
## デバッグ (Emulator)											<!-- 02-03 -->  
　Android StudioからEmulatorを起動し、tmct_fltをデバッグ実行します。  
### 操作手順  
1. Emulatorを起動  
2. tmct_fltプロジェクトを開く  
3. 実行対象デバイスを選択  
4. Debugを実行  
5. ログ及び動作を確認  
  
### 主な確認項目  
- タイマーが設定値からカウントダウンする  
- Start、Stop、Clearが正しく動作する  
- カウンターが正しく更新される  
- 残り10秒で表示が変化する  
- 終了時に音及び振動が動作する  
- 設定値が保存される  
- Version等、設定内容が記録されている  
  
<!-- 後日、SoftwareDevelopmentGuide整備後に記載  
#### 項目設定方法  
　[<img src="./assets/env/M_link.png" height="14"> SoftwareDevelopmentGuideへのリンク]  
-->  
## 配布用アプリケーション(.apk)作成										<!-- 02-04 -->  
### バージョン設定  
　pubspec.yaml 内で設定  
　　<img src="./assets/prtsc/M_IMG_02_version-setup.png">  
　バージョン内容  
　　<img src="./assets/prtsc/M_IMG_02_version-positoin.png" height="96">  
|Version Name|Details of Add-ons|  
|:---|:---|  
|Major version|主要機能の追加|  
|Minor version|機能変更、小規模追加|  
|Bug fixes|バグ対策|  
|build no|機能変更を伴わない修正、内部的なバグ対策|  

### Release Build  
#### 環境整備  
<details>   													<!-- flutter clean -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-clean.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter clean  
```  
</details>  

　<img src="./assets/prtsc/M_ER_02_flutter-clean.png">  
  
#### パッケージ取得  
<details>   													<!-- flutter pub get -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-pub-get.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter pub get  
```  
</details>  

　<img src="./assets/prtsc/M_ER_02_flutter-pub-get2.png">  
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
  
　[<img src="./assets/prtsc/M_ER_02_flutter-doctor-v2.png" width="580">](./assets/prtsc/M_ER_02_flutter-doctor-v2.png)  
<details>   													<!-- flutter pub get -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-build-apk-release.png">
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter build apk --release  
```  
</details>  

[<img src="./assets/prtsc/M_ER_02_flutter-build-apk-release.png" width="580">](./assets/prtsc/M_ER_02_flutter-build-apk-release.png)  
  
　Buildアプリケーション保存 🗁 : `Project folder` \build\app\outputs\flutter-apk\  
  
#### アプリケーションリネーム  
　Buildで生成される.apkは **app-release.apk** となっているので、**アプリケーション名+version.apk** へリネームする。  
  
> [!TIP]  
> **アプリケーション名_V1.0.0.0+1** といった名称でも、スマートフォンへインストールするとversionは表示されない。  
> <img src="./assets/env/M_allow-R.png" height="14"> アプリ情報で確認できます。  