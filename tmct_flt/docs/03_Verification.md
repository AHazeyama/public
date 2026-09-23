<p akugb=:keft>  
	<img src="./assets/03_Verification_titlebar_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/03_Verification_titlebar_light.png#gh-light-mode-only" alt="banner light">  
</p>  
<!--
<img src="./assets/03_Verification_titlebar_light.png">
-->  

# 実機検証																<!-- 04 -->  
　<img src="./assets/env/M_SP_XPERIA10IV.png" height="20">  
　スマートフォン[Xperia 10 IV]での検証を行います。  

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
  
## USB接続でのインストール												<!-- 03-01 -->  
### スマートフォン側USBデバッグ準備  
　USBデバッグモードOn  
　<img src="./assets/env/M_Android_logo0.png" height="12" >  
|Image|Operation|  
|:---|:---:|  
|<img src="./assets/env/M_AD_home01.png" height="40">　**/**　<img src="./assets/env/M_AD_ICON_system.png" height="20"> |<img src="./assets/env/M_tap.png" height="14">|  
|<img src="./assets/env/M_AD_M_setting-top.png" height="40" align="top">　**/**　<img src="./assets/env/M_AD_M_device-information.png" height="20">|<img src="./assets/env/M_tap.png" height="14">|  
|<img src="./assets/env/M_AD_M_device-information-top.png" height="18">　**/**　<img src="./assets/env/M_AD_M_build-no.png" height="20">|<img src="./assets/env/M_tap.png" height="14"> x**7**|  
|[<img src="./assets/env/M_AD_M_lock-no.png" height="92">](./assets/env/M_AD_M_lock-no.png)|入力|  
|[<img src="./assets/env/M_AD_M_developer-options-on.png" height="20">](./assets/env/M_AD_M_developer-options-on.png)|<img src="./assets/env/M_tap.png" height="14"> ⇒ <img src="./assets/env/M_AD_M_allow-L.png" height="16" align="top">|  
|<img src="./assets/env/M_AD_M_setting-top.png" height="40">　**/**　<img src="./assets/env/M_AD_M_system.png" height="20">|<img src="./assets/env/M_tap.png" height="14">|  
|<img src="./assets/env/M_AD_M_system-top.png" height="20">　**/**　<img src="./assets/env/M_AD_M_developer-option.png" height="20">|<img src="./assets/env/M_tap.png" height="14">|  
|<img src="./assets/env/M_AD_M_developer-option-top.png" height="20">　**/**　<img src="./assets/env/M_AD_M_developer-options-usb-sw.png" height="20">|`(　〇)`<img src="./assets/env/M_tap.png" height="14">|  
|[<img src="./assets/env/M_AD_M_developer-options-usb-on.png" height="80">](./assets/env/M_AD_M_developer-options-usb-on.png)|[**OK**] <img src="./assets/env/M_tap.png" height="14"> ⇒ HOME画面へ|  
| スマートフォンとPCをUSB接続||  
|<img src="./assets/env/M_AD_home02.png" height="40">|確認|  

> [!NOTE]  
> <img src="./assets/env/M_tap.png" height="14"> : 画面タップ    
### アプリケーションインストール & 実行  
#### PC側作業  
<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=devices.png">  

</summary> 
 
```pwsh  
　flutter devices  
```  

</details>  

　[<img src="./assets/cmd/M_CMD_03-01_flutter=devices-R.png" width="560">](./assets/cmd/M_CMD_03-01_flutter=run=-d=device-id.png)  

<details>  
<summary>
　<img src="./assets/env/M_copy.png" height="14">
　<img src="./assets/cmd/M_CMD_flutter=run=-d=device-id.png">  

</summary> 
 
```pwsh  
flutter run -d device-ID  
```  

</details>  

　[<img src="./assets/cmd/M_CMD_03-02_flutter-run-R.png" width="560">](./assets/cmd/M_CMD_03-02_flutter-run-R.png)  
  
#### 画面遷移  
　<img src="./assets/env/M_Android_logo0.png" height="12" >  
|Initial|Installing...|Running|After execution|  
|:---|:---|:---|:---|  
| [<img src="./assets/env/M_AD_home03.png" height="256">](./assets/env/M_AD_home03.png)>|[<img src="./assets/env/M_AD_home-install.png" height="256">](./assets/env/M_AD_home-install.png)|[<img src="./assets/env/M_AD_tmct.png" height="256">](./assets/env/M_AD_tmct.png)|[<img src="./assets/env/M_AD_home04.png" height="256">](./assets/env/M_AD_home04.png)|  
  
## 検証																	<!-- 03-03 -->  
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
　[<img src="./assets/env/M_link.png" height="14"> SoftwareDevelopmentGuideへのリンク]  
-->  
