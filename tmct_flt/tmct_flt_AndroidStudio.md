<p akugb=:keft>  
	<img src="./assets/Tutorial_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/GitHub_description_light.png#gh-light-mode-only" alt="banner light">  
</p>  
  
# OverView  
#### 目的 : リハビリテーション(姿勢保持動作)支援アプリケーションの作成<br>　　　OS不問のMobileアプリケーション開発<br> 内容 : **Android** / **iOS** 両用開発環境を構築し、アプリケーション開発を行う  
|Item|Content|  
|:--|:--|  
|OS|<img src="./assets/env/M_OS_Win11.png" height="13">|
|言語|<img src="./assets/env/M_LANG_Dart.png" height="20">|
|FrameWork|<img src="./assets/env/M_FW_Flutter.png" height="26">|
|IDE|<img src="./assets/env/M_IDE_AndroidStudo.png" height="28">|
|Editor|<img src="./assets/env/M_EDT_Vim.png" height="14">　<img src="./assets/env/M_EDT_VSCode.png" height="14">|
|検証機材|<img src="./assets/env/M_SP_XPERIA10IV.png" height="12">|
  
# 開発環境構築  
## 開発環境初期化  
　既に開発環境が存在する場合、フレームワークやIDEによる構築物を削除します。  
　　1. 既存環境確認  
　　2. Android Studio(IDE) 削除  
　　3. Android SDK 削除  
　　4. 環境設定及びキャッシュ 削除  
　　　4.1 Android Studio  
　　　4.2 Grable  
　　5. Flutter(Framework) & Dart(Language) 削除  
　　6. Project内部のBuild生成物  
　[🔗初期化手順](./docs/01_Initialize.md)  

## 開発ツールインストール  
　　1. インストール済みTool確認  
　　2. Flutter(Framework) & Dart(Language) インストール  
　　3. 環境変数登録  
　　4. インストール&Path確認  
　　5. VS Codeへの機能拡張追加  
　　6. Flutter初回診断  
　　7. Android Studio(IDE) インストール  
　　　7.1 SDKインストール  
　　　7.2 Androidライセンス承認  
　　　7.3 Emulator(Pixcel7)インストール  
　　8. Emulator起動
　[🔗インストール手順](./docs/02_Environment.md)  

# スマートフォンアプリ(tmct_flt)開発  
## 開発環境確認  
　　1. 開発環境確認  
　　2. Emulator確認  
　　　2.1 正常終了  
　　　2.2 エラー対策  

## プロジェクト開発  
### Android Studio導入  
　　1. プロジェクトファイルバックアップ  
　　2. プロジェクト読込  
　　3. Androidフォルダ生成  
　　4. パッケージ取得  
　　5. アイコン生成  
　　　5.1 アイコン画像作成
　　　5.2プロジェクトへのアイコン設定  
　　6. 検証作業(Emulator:Pixcel7)  
　　7. Emulator切断  

## 配布版作成  
　　1. バージョン設定  
　　2. 配布用アプリケーション(.apk)作成  
　　3. アプリケーションリネーム  

# 実機検証  
### EXPERIA10IV  
　　1. スマートフォン側USBデバッグ準備  
　　2. スマートフォン ️<img src="./assets/env/W-allow.png" height="11"> PC有線接続  
　　3. アプリケーションインストール & 実行  
　　4. 検証作業 