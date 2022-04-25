@echo off

rem Set video save path must include /
set SAVE_PATH=%HOMEPATH%\Downloads\youtube-dl\

set SELECT="0"

echo "-h	Display help"
echo "-a	Download audio only"
echo "-U	Upgrade yt-dlp"
echo "-v	Vidoe download"
echo.
set /P SELECT=""
echo You selected %SELECT%

if %SELECT% == h (
	echo "-h	Display help"
	echo "-a	Download audio only"
	echo "-U	Upgrade yt-dlp"
	echo "-v	Vidoe download"
) else if %SELECT% == a (
	yt-dlp -f "bestaudio[ext=m4a]/best[ext=m4a]" --audio-format m4a  -P "%SAVE_PATH%" $1
) else if %SELECT% == U (
	pip install yt-dlp -U --user
) else if %SELECT% == v (
	yt-dlp --console-title --write-subs --sub-langs "ja" --no-write-auto-subs -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]" --video-format mp4 -P "%SAVE_PATH%" $1
) else (
	echo "-h	Display help"
	echo "-a	Download audio only"
	echo "-U	Upgrade yt-dlp"
	echo "-v	Vidoe download"
)
exit /b
