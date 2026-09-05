<p akugb=:keft>  
	<img src="./assets/03_Verification_titlebar_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/03_Verification_titlebar_light.png#gh-light-mode-only" alt="banner light">  
</p>  
  
# 実機検証																<!-- 04 -->  
　<img src="./assets/env/M_SP_XPERIA10IV.png" height="20">  
　実機検証にはスマートフォン**Xperia 10 IV**を使用しています。  
  
> [!NOTE]  
> 縮小表示されている画像は⬇️で拡大されます。  
>   
> ※ 記号例  
> 　🪟:デスクトップ、⬇️:マウスクリック、 […]:ボタン、<…>:Press the Key、⇒:次動作、#…:コメント  
> 　"…":テキスト、a/b:選択(a or b)、｢…｣:ウィンドウ/メニュー/フォーム、  
> 　<img src="./assets/env/M_return.png"> : Enter key press  
  
## USB接続でのインストール										<!-- 03-01 -->  
### スマートフォン側USBデバッグ準備  
　USBデバッグモードOn  
　<img src="./assets/env/M_Android_logo0.png" height="12" >  
|Image|Operation|  
|:---|:---:|  
|<img src="./assets/env/M_AD_home01.png" height="40">　**/**　<img src="./assets/env/M_AD_ICON_system.png" height="20"> |👆|  
|<img src="./assets/env/M_AD_M_setting-top.png" height="40" align="top">　**/**　<img src="./assets/env/M_AD_M_device-information.png" height="20">|👆|  
|<img src="./assets/env/M_AD_M_device-information-top.png" height="18">　**/**　<img src="./assets/env/M_AD_M_build-no.png" height="20">|👆 x**7**|  
|[<img src="./assets/env/M_AD_M_lock-no.png" height="92">](./assets/env/M_AD_M_lock-no.png)|入力|  
|[<img src="./assets/env/M_AD_M_developer-options-on.png" height="20">](./assets/env/M_AD_M_developer-options-on.png)|👆 ⇒ <img src="./assets/env/M_AD_M_allow-L.png" height="16" align="top">|  
|<img src="./assets/env/M_AD_M_setting-top.png" height="40">　**/**　<img src="./assets/env/M_AD_M_system.png" height="20">|👆|  
|<img src="./assets/env/M_AD_M_system-top.png" height="20">　**/**　<img src="./assets/env/M_AD_M_developer-option.png" height="20">|👆|  
|<img src="./assets/env/M_AD_M_developer-option-top.png" height="20">　**/**　<img src="./assets/env/M_AD_M_developer-options-usb-sw.png" height="20">|`(　〇)`👆|  
|[<img src="./assets/env/M_AD_M_developer-options-usb-on.png" height="80">](./assets/env/M_AD_M_developer-options-usb-on.png)|[**OK**]👆 ⇒ HOME画面へ|  
| スマートフォンとPCをUSB接続||  
|<img src="./assets/env/M_AD_home02.png" height="40">|確認|  
  
### アプリケーションインストール & 実行  
#### PC側作業  
　<img src="./assets/env/M_SHELL_PoewrShell.png" height="12">  
><img src="./assets/env/M_flutter-devices.png">　<img src="./assets/env/M_return.png">  
>[<img src="./assets/prtsc/03-01-01_flutter-devices.png" width="1024">](./assets/prtsc/03-01-01_flutter-devices.png)  
  
><img src="./assets/env/M_flutter-run-Device-ID.png">　<img src="./assets/env/M_return.png">  
>[<img src="./assets/prtsc/03-01-02_flutter-run-HQ632N105E.png" width="1024">](./assets/prtsc/03-01-02_flutter-run-HQ632N105E.png)  
  
#### 画面遷移  
　<img src="./assets/env/M_Android_logo0.png" height="12" >  
|Initial|Installing...|Running|After execution|  
|:---|:---|:---|:---|  
| [<img src="./assets/env/M_AD_home03.png" height="256">](./assets/env/M_AD_home03.png)>|[<img src="./assets/env/M_AD_home-install.png" height="256">](./assets/env/M_AD_home-install.png)|[<img src="./assets/env/M_AD_tmct.png" height="256">](./assets/env/M_AD_tmct.png)|[<img src="./assets/env/M_AD_home04.png" height="256">](./assets/env/M_AD_home04.png)|  
  
## 検証															<!-- 03-03 -->  
### 操作手順  
1. Xperia 10 IVでtmct_fltを起動  
2. タイマーを設定  
3. 各操作を実行  
4. 音・振動・表示を確認  
5. アプリを終了／再起動して設定保持を確認  
  
### 主な確認項目  
  
- タイマーが設定値からカウントダウンする  
- Start、Stop、Clearが正しく動作する  
- カウンターが正しく更新される  
- 残り10秒で表示が変化する  
- 終了時に音及び振動が動作する  
- 設定値が保存される  
- アプリ終了後に再起動出来る  
- HOMEへ戻った後、再起動出来る  
- Version等、設定内容が記録されている  
  
<!-- 後日、SoftwareDevelopmentGuide整備後に記載  
#### 項目設定方法  
　[🔗SoftwareDevelopmentGuideへのリンク]  
-->  
  