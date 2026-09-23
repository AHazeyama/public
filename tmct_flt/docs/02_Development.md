<p akugb=:keft>  
	<img src="./assets/02_Development_titlebar_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/02_Development_titlebar_light.png#gh-light-mode-only" alt="banner light">  
</p>  
<!--
<img src="./assets/02_Development_titlebar_light.png">
-->

# Mobileアプリケーション作成											<!-- 02 -->  
　リハビリテーション用カウントダウンタイマー&カウンター [**tmct_flt**] を作成します。  
　
> [!NOTE]  
> 凡例  
> [<img src="./assets/env/M_legend.png" width="480">](./assets/env/M_legend.png)  
>
> 縮小画像 (マウスカーソルが <img src="./assets/env/M_info.png" height="14"> に変化する画像) は <img src="./assets/env/M_click.png" height="14"> で拡大表示します。  
>
> Source code / コマンド は <img src="./assets/env/M_copy.png" height="14"> <img src="./assets/env/M_click.png" height="14"> でText表示します (表示されたTextの右上にある <img src="./assets/env/M_git-copy.png" height="14"> <img src="./assets/env/M_click.png" height="14"> でコピー)。  
>
> <img src="./assets/env/M_infoG.png" height="14"> ブラウザを **Darkモード** にして頂けると、見やすくなります。  
>
> <img src="./assets/env/M_term.png" height="14"> コマンドは全て <img src="./assets/env/M_SHELL_PWSH.png" height="12"> で実行します。

## Coding																<!-- 02-01 -->  
　コーディング過程は省略。  
　ソースコード[tmct_flt]は下記参照。  
| Created file | <img src="./assets/env/M_dir.png" height="14"> Location |  
|:---|:---|  
| [<img src="./assets/env/M_link.png" height="14"> main.dart](https://github.com/AHazeyama/public/blob/main/tmct_flt/lib/main.dart) | Project_dir \ lib \ |  
| [<img src="./assets/env/M_link.png" height="14"> pubspec.yaml](https://github.com/AHazeyama/public/blob/main/tmct_flt/pubspec.yaml) | Project_dir \ |  

## アプリケーションのインストール										<!-- 02-02 -->
#### 開発環境確認  
<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=doctor=-v.png">  

</summary> 
 
```pwsh  
flutter doctor -v
```  

</details>  

　　[<img src="./assets/cmd/M_CMD_02-01_flutter=doctor=-v-R.png" width="560">](./assets/cmd/M_CMD_02-01_flutter=doctor=-v-R.png)  

<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=devices.png">  

</summary> 
 
```pwsh  
flutter devices  
```  

</details>  

　　[<img src="./assets/cmd/M_CMD_02-02_flutter=devices-R.png" width="560">](./assets/cmd/M_CMD_02-02_flutter=devices-R.png)  


#### ファイルバックアップ  
<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=create=--platforms=android=--project-name.png">  

</summary> 
 
　｢Coding｣で作成したファイルをバックアップ。  
#### Androidフォルダ生成  
```pwsh  
flutter create --platforms=android --project-name tmct_flt .  
```  

</details>  

　　[<img src="./assets/cmd/M_CMD_02-03_flutter=create=--platforms=android=--project-name-R.png" width="560">](./assets/cmd/M_CMD_02-03_flutter=create=--platforms=android=--project-name-R.png)  

#### パッケージ取得  
<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=pub=get.png">  

</summary> 
 
```pwsh  
flutter pub get  
```  

</details>  

　　[<img src="./assets/cmd/M_CMD_02-04_flutter=pub=get-R.png" width="560">](./assets/cmd/M_CMD_02-04_flutter=pub=get-R.png)  
　
#### アイコン生成  
　アイコンファイル追加  
<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=pub=add=--dev=flutter_launcher_icons.png">  

</summary> 
 
```pwsh  
flutter pub add --dev flutter_launcher_icons  
```  

</details>  

　　[<img src="./assets/cmd/M_CMD_02-05_flutter=pub=add=--dev=flutter_launcher_icons.png" width="560">](./assets/cmd/M_CMD_02-05_flutter=pub=add=--dev=flutter_launcher_icons.png)  


　アイコンファイル登録  
<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_dart=run=flutter_launcher_icons.png">

</summary> 
 
```pwsh  
dart run flutter_launcher_icons  
```  

</details>  

　　<img src="./assets/cmd/M_CMD_02-06_dart=run=flutter_luncher_icons-R.png">  


> [!NOTE]
> iOS環境を作成していない場合の **Warning** メッセージ  
> 　[<img src="./assets/cmd/M_CMD_02-07_dart=run=flutter_luncher_icons-R-W.png" width="560">](./assets/cmd/M_CMD_02-07_dart=run=flutter_luncher_icons-R-W.png)  
> 原因はiconファイルのフォルダ階層かファイル名の不一致。  
> またはpubspec.yamlで"ios:**True**"になってる ⇒ **False**へ変更。  
> 　<img src="./assets/cmd/M_SRC_02-01_dart=run=flutter_luncher_icons=yaml.png">  

<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">  
　<img src="./assets/cmd/M_CMD_flutter=analyze.png">  

</summary> 
 
```pwsh  
flutter analyze  
```  

</details>  

　　<img src="./assets/cmd/M_CMD_02-08_flutter=analyze-R.png">  

> [!warning]  
> testフォルダを削除しなかった場合の **Error** メッセージ  
> 　[<img src="./assets/cmd/M_CMD_02-09_flutter=analyze--R-E.png" width="560">](./assets/cmd/M_CMD_02-09_flutter=analyze--R-E.png)  
> 本チュートリアルでは自動生成されたサンプルテストを使用しないため、**test** フォルダは削除します。  
>　　<img src="./assets/env/M_folder.png" height="14"> : .\ Project_dir \  test  

#### インストール  
　Emulator 確認 (FlutterからAndroid StudioのEmulatorが操作可能かを確認)  
<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=devices.png">

</summary> 
 
```pwsh  
flutter devices  
```  

</details>  

　[<img src="./assets/cmd/M_CMD_02-10_flutter=devices.png" width="560">](./assets/cmd/M_CMD_02-10_flutter=devices.png)  
　

　アプリケーションを Emulator へインストール   
<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=run=-d.png">  

</summary> 
 
```pwsh  
flutter run -d emulator-5554
```  

</details>  

　[<img src="./assets/cmd/M_CMD_02-11_flutter=run=-d=emulator-5554.png" width="560">](./assets/cmd/M_CMD_02-11_flutter=run=-d=emulator-5554.png)  

　Emulator表示の遷移  
|Initial|Installing...|Running|After execution|  
|:---|:---|:---|:---|  
|[<img src="./assets/prtsc/02-02-09_emulator01.png" height="256">](./assets/prtsc/02-02-09_emulator01.png)|[<img src="./assets/prtsc/02-02-11_emulator02.png" height="256">](./assets/prtsc/02-02-11_emulator02.png)|[<img src="./assets/prtsc/02-02-12_emulator03.png" height="256">](./assets/prtsc/02-02-12_emulator03.png)|[<img src="./assets/prtsc/02-02-13_emulator04.png" height="256">](./assets/prtsc/02-02-13_emulator04.png)|  

## デバッグ (Emulator)													<!-- 02-03 -->  
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
　[🔗SoftwareDevelopmentGuideへのリンク]  
-->
## 配布用アプリケーション(.apk)作成										<!-- 02-04 -->
### バージョン設定  
　pubspec.yaml 内で設定  
　　<img src="./assets/cmd/M_SRC_02-02_version-setup.png">  
　バージョン内容  
　　<img src="./assets/cmd/M_SRC_02-03_version-positoin.png" width="200">  
|Version Name|Details of Add-ons|  
|:---|:---|  
|Major version|主要機能の追加|  
|Minor version|機能変更、小規模追加|  
|Bug fixes|バグ対策|  
|build no|機能変更を伴わない修正、内部的なバグ対策|  

### Release Build  
#### 環境整備  
<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=clean.png">  

</summary> 
 
```pwsh
flutter clean  
```

</details>  

　　[<img src="./assets/cmd/M_CMD_02-12_flutter=clean.png" width="560">](./assets/cmd/M_CMD_02-12_flutter=clean.png)  

#### パッケージ取得  
<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=pub=get.png">  

</summary> 
 
```pwsh  
flutter pub get  
```  

</details>  

　　<img src="./assets/cmd/M_CMD_02-13_flutter=pub=get-R.png">

#### Build  
<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=build=apk=--release.png">  

</summary> 
 
```pwsh  
　flutter build apk --release  
```  

</details>  

　　[<img src="./assets/cmd/M_CMD_02-14_flutter=build=apk=--release.png" width="560">](./assets/cmd/M_CMD_02-14_flutter=build=apk=--release.png)  
　Buildアプリケーション保存 🗁 : `Project folder` \build\app\outputs\flutter-apk\  

#### アプリケーションリネーム  
　Buildで生成される.apkは **app-release.apk** となっているので、**アプリケーション名+version.apk** へリネームする。

> [!TIP]
> **アプリケーション名_V1.0.0.0+1** といった名称でも、スマートフォンへインストールするとversionは表示されない。  
> <img src="./assets/env/M_allow-R.png" height="12"> アプリ情報で確認できます。  
