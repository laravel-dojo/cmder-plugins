# cmder-plugins

我們為 [cmder](http://bliker.github.io/cmder/) 這套免安裝的終端機程式撰寫了一系列與 Laravel 開發相關的 completion 外掛為 `cmder-plugins`。若您使用 Windows 系列作業系統做為開發 Laravel 的平台，那我們強烈建議您使用 `cmder` 取代內建 cmd.exe。安裝完這些外掛後，可達成如下的效果：

![Screenshot1](https://raw.github.com/laravel-dojo/cmder-plugins/master/images/screenshot.gif)

## 安裝方式

1. 開啟 `cmder` 安裝目錄底下的 `config` 資料夾 (假設為 c:\cmder\config)
2. 下載您需要的外掛程式 (如 artisan.lua)，並放在 `config` 資料夾內
3. 依需求修改您的 `aliases` 設定 (可參考 `aliases` 檔案)，如：

    ```
	artisan=php artisan $*
    ```

4. 重新啟動 `cmder` 即可

更多詳細介紹可參考：<http://www.laravel-dojo.com/opensource/cmder-plugins>


## 外掛列表

* composer (dependency manager for php)
* artisan (laravel command line tool)

(更多外掛增加中…)