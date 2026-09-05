<p akugb=:keft>  
	<img src="./assets/02_Development_titlebar_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/02_Development_titlebar_light.png#gh-light-mode-only" alt="banner light">  
</p>  
  
# Mobileアプリケーション作成											<!-- 02 -->  
　リハビリテーション用カウントダウンタイマー&カウンター [**tmct_flt**] を作成します。  
　  
> [!NOTE]  
> 縮小表示されている画像は⬇️で拡大されます。  
>   
> ※ 記号例  
> 　🪟:デスクトップ、⬇️:マウスクリック、 […]:ボタン、<…>:Press the Key、⇒:次動作、#…:コメント  
> 　"…":テキスト、a/b:選択(a or b)、｢…｣:ウィンドウ/メニュー/フォーム、  
> 　<img src="./assets/env/M_return.png"> : Enter key press  
  
## Coding														<!-- 02-01 -->  
　コーディング過程は省略。  
　ソースコード[tmct_flt]は下記参照。  
| Created file | 🗁 Location |  
|:---|:---|  
| [🔗main.dart](https://github.com/AHazeyama/public/blob/main/tmct_flt/lib/main.dart) | Project_dir \ lib \ |  
| [🔗pubspec.yaml](https://github.com/AHazeyama/public/blob/main/tmct_flt/pubspec.yaml) | Project_dir \ |  
  
## アプリケーションのインストール									<!-- 02-02 -->  
#### 開発環境確認  
　<img src="./assets/env/M_SHELL_PoewrShell.png" height="12">  
　<img src="./assets/env/M_flutter-doctor-v.png">　<img src="./assets/env/M_return.png">   
　[<img src="./assets/prtsc/02-02-01_flutter-doctor.png" height="512">](./assets/prtsc/02-02-01_flutter-doctor.png)  
  
  
　<img src="./assets/env/M_flutter-devices.png">　<img src="./assets/env/M_return.png">  
　[<img src="./assets/prtsc/02-02-02_flutter-devices.png" width="1024">](./assets/prtsc/02-02-02_flutter-devices.png)  
  
#### ファイルバックアップ  
　｢Coding｣で作成したファイルをバックアップ。  
  
#### Androidフォルダ生成  
　<img src="./assets/env/M_SHELL_PoewrShell.png" height="12">  
　<img src="./assets/env/M_flutter-create.png">　<img src="./assets/env/M_return.png">  
　[<img src="./assets/prtsc/02-02-03_flutter-create.png" width="512">](./assets/prtsc/02-02-04_flutter-pub-get.png)  
  
#### パッケージ取得  
　<img src="./assets/env/M_SHELL_PoewrShell.png" height="12">  
　<img src="./assets/env/M_flutter-pub-get.png">　<img src="./assets/env/M_return.png">  
　<img src="./assets/prtsc/02-02-04_flutter-pub-get.png">  
　  
#### アイコン生成  
　アイコンファイル追加  
　<img src="./assets/env/M_SHELL_PoewrShell.png" height="12">  
　<img src="./assets/env/M_flutter-pub-add.png">　<img src="./assets/env/M_return.png">  
　[<img src="./assets/prtsc/02-02-05_flutter-pub-add.png" width="1024">](./assets/prtsc/02-02-05_flutter-pub-add.png)  
  
　アイコンファイル登録  
　<img src="./assets/env/M_SHELL_PoewrShell.png" height="12">  
　<img src="./assets/env/M_dart-run.png">　<img src="./assets/env/M_return.png">  
　<img src="./assets/prtsc/02-02-06_dart-run-flutter_luncher_icons.png">  
  
  
> [!NOTE]  
> [<img src="./assets/prtsc/02-02-06_dart-run-flutter_luncher_icons_warn.png" wkdth="1024">](./assets/prtsc/02-02-06_dart-run-flutter_luncher_icons_warn.png)  
> iOS環境を作成していない場合、上記Warningが出力される。  
> 原因はiconファイルのフォルダ階層かファイル名の不一致。  
> またはpubspec.yamlで"ios:**True**"になってる ⇒ **False**へ変更。  
> <img src="./assets/prtsc/02-02-06_dart-run-flutter_luncher_icons_yaml.png">  
  
　本チュートリアルでは自動生成されたサンプルテストを使用しないため、testフォルダを削除します。  
　　🗁: .\ Project_dir \  TEST  
  
　<img src="./assets/env/M_SHELL_PoewrShell.png" height="12">  
　<img src="./assets/env/M_flutter-analyze.png">　<img src="./assets/env/M_return.png">  
　<img src="./assets/prtsc/02-02-07_flutter-analyze.png">  
  
> [!NOTE]  
> 参考:TESTフォルダを削除しなかった場合のメッセージ  
> <img src="./assets/prtsc/02-02-07_flutter-analyze-error.png">  
  
#### インストール  
　Emulator 確認 (FlutterからAndroid StudioのEmulatorが操作可能かを確認)  
　<img src="./assets/env/M_SHELL_PoewrShell.png" height="12">  
　<img src="./assets/env/M_flutter-devices.png">　<img src="./assets/env/M_return.png">
　<img src="./assets/prtsc/02-02-08_flutter-devices.png">  
  
　Emulator へインストール   
  
　<img src="./assets/env/M_flutter-run-emulator-5554.png">　<img src="./assets/env/M_return.png">
　[<img src="./assets/prtsc/02-02-10_flutter-run-emulator-5554.png" width="1024">](./assets/prtsc/02-02-10_flutter-run-emulator-5554.png)　　  
  
　Emulator表示の遷移  
|Initial|Installing...|Running|After execution|  
|:---|:---|:---|:---|  
|[<img src="./assets/prtsc/02-02-09_emulator01.png" height="256">](./assets/prtsc/02-02-09_emulator01.png)|[<img src="./assets/prtsc/02-02-11_emulator02.png" height="256">](./assets/prtsc/02-02-11_emulator02.png)|[<img src="./assets/prtsc/02-02-12_emulator03.png" height="256">](./assets/prtsc/02-02-12_emulator03.png)|[<img src="./assets/prtsc/02-02-13_emulator04.png" height="256">](./assets/prtsc/02-02-13_emulator04.png)|  
  
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
　[🔗SoftwareDevelopmentGuideへのリンク]  
-->  
## 配布用アプリケーション(.apk)作成								<!-- 02-04 -->  
### バージョン設定  
　pubspec.yaml 内で設定  
　　<img src="./assets/prtsc/02-04-01_version-setup.png">  
　バージョン内容  
　　<img src="./assets/prtsc/02-04-02_version-positoin.png" height="96">  
|Version Name|Details of Add-ons|  
|:---|:---|  
|Major version|主要機能の追加|  
|Minor version|機能変更、小規模追加|  
|Bug fixes|バグ対策|  
|build no|機能変更を伴わない修正、内部的なバグ対策|  
  
### Release Build  
　<img src="./assets/env/M_SHELL_PoewrShell.png" height="12">  
  
#### 環境整備  
　<img src="./assets/env/M_flutter-clean.png">　<img src="./assets/env/M_return.png">  
　<img src="./assets/prtsc/02-04-03_flutter-clean.png">  
  
#### パッケージ取得  
　<img src="./assets/env/M_flutter-pub-get.png">　<img src="./assets/env/M_return.png">  
　<img src="./assets/prtsc/02-04-04_flutter-pub-get.png">  
  
  
  
　<img src="./assets/env/M_flutter-doctor-v.png">　<img src="./assets/env/M_return.png">  
　<img src="./assets/prtsc/02-04-05_flutter-doctor.png">  
  
><img src="./assets/env/M_flutter-build-apk.png">　<img src="./assets/env/M_return.png">  
>[<img src="./assets/prtsc/02-04-06_flutter-build-apk-release.png" height="72">](./assets/prtsc/02-04-06_flutter-build-apk-release.png)  
  
　Buildアプリケーション保存 🗁 : `Project folder` \build\app\outputs\flutter-apk\  
  
#### アプリケーションリネーム  
　Buildで生成される.apkは **app-release.apk** となっているので、**アプリケーション名+version.apk** へリネームする。  
  
> [!TIP]  
> **アプリケーション名_V1.0.0.0+1** といった名称でも、スマートフォンへインストールするとversionは表示されない。  
> ➡ アプリ情報で確認できます。  