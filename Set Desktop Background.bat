@ECHO OFF
REM Set Desktop Background
mkdir %SystemRoot%\Web\Wallpaper\custom
xcopy \\nas\deployment\Customizations\custom_Background_HiRes.png %SystemRoot%\Web\Wallpaper\custom /Q /Y
xcopy \\nas\deployment\Customizations\custom.theme %SystemRoot%\Resources\Themes /Q /Y
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes" /v InstallTheme /t REG_SZ /d "C:\Windows\resources\Themes\custom.theme" /f