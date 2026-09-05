<p akugb=:keft>  
	<img src="./assets/Tutorial_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/Tutorial_light.png#gh-light-mode-only" alt="banner light">  
</p>  
  
> [!NOTE]  
> 現在、編集途中です。  
> リンク先内容等、不備がありますが、ご容赦ください。  
> 随時更新して行く予定です。  
  
# Overview  
#### 目的 : OS不問のMobileアプリケーション開発、<br>　　　　リハビリテーション(姿勢保持動作)支援アプリケーション <br> 内容 : **Android** / **iOS** 共用開発環境を構築し、アプリケーション開発を行う  
  
> [!NOTE]  
> 本書ではWindows 11上でAndroidアプリケーションを開発する手順を記載します。  
  
|Item|Content|  
|:--|:--|  
|OS|<img src="./assets/env/M_OS_Win11.png" height="13">|  
|言語|<img src="./assets/env/M_LANG_Dart.png" height="20">|  
|Framework|<img src="./assets/env/M_FW_Flutter.png" height="26">|  
|IDE|<img src="./assets/env/M_IDE_AndroidStudo.png" height="28">|  
|Editor|<img src="./assets/env/M_EDT_Vim.png" height="14">　**/**　<img src="./assets/env/M_EDT_VSCode.png" height="14">|  
|検証機材|<img src="./assets/env/M_SP_XPERIA10IV.png" height="12">|  
  
# リハビリテーション用タイマー&カウンター[tmct]開発手順  
> [!TIP]  
> 既存の開発環境があり、**再構築**する場合は環境の初期化が必要です。  
> 初期化方法は本書末尾の ｢**Appendix 開発環境初期化**｣を参照ください。  
## 開発ツールインストール												<!-- 01 -->    
　**SDK(Flutter)** 及び **IDE(Android Studio)** のインストールと環境設定を行います。  
### インストール済みツール確認											<!-- 01-01 -->  
### Flutter(Framework) & Dart(Language) インストール					<!-- 01-02 -->  
### 環境変数登録														<!-- 01-03 -->  
　1. インストール&Path確認  
　2. VS Codeへの機能拡張追加  
　3. Flutter初回診断  
### Android Studio(IDE) インストール									<!-- 01-04 -->  
　1. Project作成  
　2. SDKインストール  
　3. Emulator(Pixel7)インストール  
　4. Androidライセンス承認  
### Emulator起動														<!-- 01-05 -->  
  
[🔗開発ツールインストール手順](./docs/01_Environment.md)  
  
## Mobileアプリケーション作成											<!-- 02 -->  
　リハビリテーション用カウントダウンタイマー&カウンター[tmct_flt]を作成します。  
### Coding																<!-- 02-01 -->  
### アプリケーションのインストール                                      <!-- 02-02 -->  
　1. 開発環境確認  
　2. ファイルバックアップ  
　3. Androidフォルダ生成  
　4. パッケージ取得  
　5. アイコン生成  
　6. インストール  
### デバッグ (Emulator)                                                 <!-- 02-03 -->  
　1. 操作手順  
　2. 主な確認項目  
　3. アプリケーションのインストール  
### 配布用アプリケーション(.apk)作成                                    <!-- 02-04 -->  
　1. バージョン設定  
　2. Release Build  
  
[🔗Mobileアプリケーション作成手順](./docs/02_Development.md)  
  
## 実機検証																<!-- 03 -->  
　スマートフォン[Xperia 10 IV]での検証を行います。  
### USB接続でのインストール												<!-- 03-01 -->  
　1. スマートフォン側USBデバッグ準備  
　2. アプリケーションインストール & 実行  
  
<!--  
### GitHubからインストール  
　.apkダウンロード & インストール  
-->  
  
### 検証																<!-- 03-02 -->  
　検証作業  
  
[🔗実機検証手順](./docs//03_Verification.md)  
  
## Appendix : 開発環境初期化											<!-- APP -->  
　インストール済みの **Flutter** と **Android Studio**  及びその環境、生成物の削除を行います。  
### 現状確認															<!-- APP-01 -->  
　1. Flutter SDK 環境  
　2. Android 環境  
### 環境削除															<!-- APP-02 -->  
　1. Android Studio 削除  
　2. Android Studio 削除確認 残項目があれば強制削除
　3. Android SDK 環境 削除  
　4. .android  
　5. 設定 及び キャッシュ  
　6. Flutter SDK 削除  
　7. Flutter & Dart 設定･キャッシュ 削除  
　8. プロジェクト内のBuild生成物 削除  
### 再起動 ⇒  削除確認													<!-- APP-03 -->  
　1. 削除対象  
### 完了確認															<!-- APP-04 -->  
  
[🔗開発環境初期化手順](./docs/APP_Initialize.md)  
  