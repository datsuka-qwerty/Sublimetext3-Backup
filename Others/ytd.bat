@echo off

rem Set video save path must include /
set SAVE_PATH=%HOMEPATH%\Downloads\youtube-dl\

set SELECT="0"
set SELECT1="0"

echo Which do you want to download?
echo.
echo 1-One Video
echo 2-Playlist
echo 3-Channel
echo 4-Audio
echo 5-Exit
echo.
echo 11-Normal Download
echo 22-Normal Audio Download
echo 99-Update yt-dlp
echo.
set /P SELECT=""
echo You selected %SELECT%

if %SELECT% == 1 (
	yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]"  -o "%SAVE_PATH%%%(title)s-%%(uploader)s.mp4" --no-mtime %1
) else if %SELECT% == 2 (
	yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]"  -o "%SAVE_PATH%%%(playlist_uploader)s-%%(playlist_title)s\%%(playlist_index)s_%%(title)s-%%(uploader)s.mp4" --no-mtime %1
) else if %SELECT% == 3 (
	yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]"  -o "%SAVE_PATH%%%(channel)s\%%(upload_date)s_%%(title)s-%%(uploader)s.mp4" --no-mtime %1
) else if %SELECT% == 4 (
	echo 1-One video
	echo 2-Plyalist
	echo 3-Exit
	echo.
	set /P SELECT1=""
	echo You selected %SELECT1%
	if %SELECT1% == 1 (
		yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]"  -o "%SAVE_PATH%%%(title)s-%%(uploader)s.mp4" --no-mtime %1
	) else if %SELECT1% == 2 (
		yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]"  -o "%SAVE_PATH%%%(playlist_uploader)s-%%(playlist_title)s\%%(playlist_index)s_%%(title)s-%%(uploader)s.mp4" --no-mtime %1
	) else if %SELECT1% == 3 (
		echo Exit!
		timeout /nobreak 3 > /nul
		exit /b
	) else (
		echo Please Retery
	)
) else if %SELECT% == 5 (
	echo Exit!
	timeout /nobreak 3 > /nul
	exit /b
) else if %SELECT% == 11 (
	yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]" -o "%SAVE_PATH%%%(title)s.mp4" %1
) else if %SELECT% == 22 (
	yt-dlp -f "bestaudio[ext=m4a]/best[ext=m4a]" -o "%SAVE_PATH%%%(title)s.m4a" %1
) else if %SELECT% == 99 (
	pip install yt-dlp -U --user
) else (
	echo Please Retery
	timeout /nobreak 2 > /nul
)
exit /b
