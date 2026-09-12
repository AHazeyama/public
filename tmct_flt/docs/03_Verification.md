<p akugb=:keft>  
	<img src="./assets/03_Verification_titlebar_dark.png#gh-dark-mode-only" alt="banner dark">  
	<img src="./assets/03_Verification_titlebar_light.png#gh-light-mode-only" alt="banner light">  
</p>  
  
# 実機検証																<!-- 04 -->  
　<img src="./assets/env/M_SP_XPERIA10IV.png" height="20">  
　実機検証にはスマートフォン**Xperia 10 IV**を使用しています。  



> [!NOTE]  
> ※ 凡例  
> 　<img src="./assets/env/M_win.png" height="14"> デスクトップ、️<img src="./assets/env/M_click.png" height="14">：マウスクリック、 <img src="./assets/env/M_button.png" height="14">：ボタン、<img src="./assets/env/M_key.png" height="14">：Press the Key、<img src="./assets/env/M_return.png" height="14">：Enter key press、  
> 　<img src="./assets/env/M_tap.png" height="14">：タップ、<img src="./assets/env/M_text.png" height="14">：テキスト、**a** / **b**：選択(**a** or **b**)、<img src="./assets/env/M_menu.png" height="14">：ウィンドウ/メニュー/フォーム、⇒：次動作、<img src="./assets/env/M_comment.png" height="11">：コメント、  
>　<img src="./assets/env/M_term.png" height="14">：ターミナル、<img src="./assets/env/M_copy.png" height="14">：クリックでText表示 (コピー可能)  

> [!NOTE]  
> 縮小表示されている画像は <img src="./assets/env/M_click.png" height="14"> で拡大されます (マウスカーソルが <img src="./assets/env/M_info.png" height="14"> になる画像が縮小表示画像です)。  
> <img src="./assets/env/M_caution.png" height="14"> 本章のコマンドは全て　<img src="./assets/env/M_term.png" height="14"> <img src="./assets/env/M_SHELL_PowerShell.png" height="12">　にて実行しています。

## USB接続でのインストール										<!-- 03-01 -->  
### スマートフォン側USBデバッグ準備  
　USBデバッグモードOn  
　<img src="./assets/env/M_Android_logo0.png" height="12" >  
|Image|Operation|  
|:---|:---:|  
|<img src="./assets/prtsc/M_AD_home01.png" height="40">　**/**　<img src="./assets/prtsc/M_AD_ICON_system.png" height="20"> |<img src="./assets/env/M_tap.png" height="14">|  
|<img src="./assets/prtsc/M_AD_M_setting-top.png" height="40" align="top">　**/**　<img src="./assets/prtsc/M_AD_M_device-information.png" height="20">|<img src="./assets/env/M_tap.png" height="14">|  
|<img src="./assets/prtsc/M_AD_M_device-information-top.png" height="18">　**/**　<img src="./assets/prtsc/M_AD_M_build-no.png" height="20">|<img src="./assets/env/M_tap.png" height="14"> x**7**|  
|[<img src="./assets/prtsc/M_AD_M_lock-no.png" height="64">](./assets/prtsc/M_AD_M_lock-no.png)|入力|  
|[<img src="./assets/prtsc/M_AD_M_developer-options-on.png" height="20">](./assets/prtsc/M_AD_M_developer-options-on.png)|<img src="./assets/env/M_tap.png" height="14"> ⇒ <img src="./assets/prtsc/M_AD_M_allow-L.png" height="16" align="top">|  
|<img src="./assets/prtsc/M_AD_M_setting-top.png" height="40">　**/**　<img src="./assets/prtsc/M_AD_M_system.png" height="20">|<img src="./assets/env/M_tap.png" height="14">|  
|<img src="./assets/prtsc/M_AD_M_system-top.png" height="20">　**/**　<img src="./assets/prtsc/M_AD_M_developer-option.png" height="20">|<img src="./assets/env/M_tap.png" height="14">|  
|<img src="./assets/prtsc/M_AD_M_developer-option-top.png" height="20">　**/**　<img src="./assets/prtsc/M_AD_M_developer-options-usb-sw.png" height="20">|<img src="./assets/env/M_AD_M_button-on.png" height="12"> <img src="./assets/env/M_tap.png" height="14">|  
|[<img src="./assets/prtsc/M_AD_M_developer-options-usb-on.png" height="80">](./assets/env/M_AD_M_developer-options-usb-on.png)|[**OK**] <img src="./assets/env/M_tap.png" height="14"> ⇒ HOME画面へ|  
| スマートフォンとPCをUSB接続||  
|<img src="./assets/prtsc/M_AD_home02.png" height="40">|確認|  
  
### アプリケーションインストール & 実行  
#### PC側作業  
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

　[<img src="./assets/prtsc/M_ER_03_flutter-devices.png" width="580-">](./assets/prtsc/M_ER_03_flutter-devices.png)  
<details>   												<!-- flutter pub get -->
<summary>
<img src="./assets/env/M_copy.png" height="14">  
<img src="./assets/cmd/M_CMD_flutter-run-device.png">  
&nbsp;<img src="./assets/env/M_return.png" height="12">  
</summary>  
  
```  
flutter run -d "実機のDeviceID"
```  
</details>  

　[<img src="./assets/prtsc/M_ER_03_flutter-run-HQ632N105E.png" width="580">](./assets/prtsc/M_ER_03_flutter-run-HQ632N105E.png)  
  
#### 画面遷移  
　<img src="./assets/env/M_Android_logo0.png" height="12" >  
|Initial|Installing...|Running|After execution|  
|:---|:---|:---|:---|  
| [<img src="./assets/prtsc/M_AD_home03.png" height="256">](./assets/prtsc/M_AD_home03.png)>|[<img src="./assets/prtsc/M_AD_home-install.png" height="256">](./assets/prtsc/M_AD_home-install.png)|[<img src="./assets/prtsc/M_AD_tmct.png" height="256">](./assets/prtsc/M_AD_tmct.png)|[<img src="./assets/prtsc/M_AD_home04.png" height="256">](./assets/prtsc/M_AD_home04.png)|  
  
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
　※ SoftwareDevelopmentGuideへのリンク  
-->  
  
