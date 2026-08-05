<p akugb=:keft>  
	<img src="./assets/Tutorial_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/Tutorial_light.png#gh-light-mode-only" alt="banner light">  
</p>  
  
> [!NOTE]  
> 現在、編集途中です。  
> リンク先内容等、不備がありますが、ご容赦ください。  
> 随時更新して行く予定です。  
  
# OverView  
#### 目的 : OS不問のMobileアプリケーション開発、<br>　　　　リハビリテーション(姿勢保持動作)支援アプリケーション <br> 内容 : **Android** / **iOS** 両用開発環境を構築し、アプリケーション開発を行う  
|Item|Content|  
|:--|:--|  
|OS|<img src="./assets/env/M_OS_Win11.png" height="13">|  
|言語|<img src="./assets/env/M_LANG_Dart.png" height="20">|  
|FrameWork|<img src="./assets/env/M_FW_Flutter.png" height="26">|  
|IDE|<img src="./assets/env/M_IDE_AndroidStudo.png" height="28">|  
|Editor|<img src="./assets/env/M_EDT_Vim.png" height="14">　**/**　<img src="./assets/env/M_EDT_VSCode.png" height="14">|  
|検証機材|<img src="./assets/env/M_SP_XPERIA10IV.png" height="12">|  
  
# リハビリテーション用タイマー&カウンター[tmct]開発手順  
## 開発環境初期化														<!-- 01 -->  
　インストール済みの **Flutter** と **Android Studio**  及びその環境、生成物の削除を行います。  
### 現状確認															<!-- 01-01 -->  
　1. Flutter SDK 環境  
　2. Android 環境  
### 環境削除															<!-- 02-02 -->  
　1. Android Studio 削除削除  
　2. Android Studio 削除  
　3. Android Studio 削除確認  
　4. Android SDK 環境  
　5. .android  
　6. 設定 及び キャッシュ  
　7. Flutter SDK 削除  
　8. Flutter & Dart 設定･キャッシュ 削除  
　9. プロジェクト内のBhild生成物 削除  
### 再起動 ⇒  削除確認													<!-- 01-03 -->  
　1. 削除対象  
  
[🔗開発環境初期化手順](./docs/01_Initialize.md)  

## 開発ツールインストール												<!-- 02 -->    
　**SDK(Flutter)** 及び **IDE(Android Studio)** のインストールと環境設定を行います。  
### インストール済みTool確認											<!-- 02-01 -->  
### Flutter(Framework) & Dart(Language) インストール					<!-- 02-02 -->  
### 環境変数登録														<!-- 02-03 -->  
　1. インストール&Path確認  
　2. VS Codeへの機能拡張追加  
　3. Flutter初回診断  
### Android Studio(IDE) インストール									<!-- 02-04 -->  
　1. Project作成  
　2. SDKインストール  
　3. Emulator(Pixcel7)インストール  
　4. Androidライセンス承認  
### Emulator起動														<!-- 02-05 -->  

[🔗開発ツールインストール手順](./docs/02_Environment.md)  
  
## Mobileアプリケーション作成											<!-- 03 -->  
　リハビリテーション用カウントダウンタイマー&カウンター[tmct_flt]を作成します。  
### Codig																<!-- 03-01 -->  
### Emulatorデバッグ													<!-- 03-02 -->  
　1. バージョン設定  
　2. 配布用アプリケーション(.apk)作成  
　3. アプリケーションリネーム  

[🔗Mobileアプリケーション作成手順](./docs/03_Development.md)  
  
## 実機検証																<!-- 04 -->  
　スマートフォン[EXPERIA10 IV]での検証を行います。  
### 配布版作成															<!-- 04-01 -->  
### USB接続でのインストール  
　1. スマートフォン側USBデバッグ準備  
　2. スマートフォン ️<img src="./assets/env/W-allow.png" height="11"> PC有線接続  
　3. アプリケーションインストール & 実行  
### GitHubからインストール  
　.apkダウンロード & インストール
### 検証
　検証作業  

[🔗実機検証手順](./docs//04_Verification.md)  
