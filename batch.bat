@echo off
 
::在下方设置要处理的视频或音频格式，这里列出了一些主要的视频格式
set Ext=*.avi,*.mp4,*.wmv,*.flv,*.mkv,*.rmvb,*.rm,*.mov
 
md output
 
echo 开始视频转换
 
::在下方设置输出格式，这里输出为mp4，可自行更改
for %%a in (%Ext%) do (
	echo 正在转换：%%a
	ffmpeg -i "%%a" -c:v av1_nvenc -b 7M -crf 10 "output\%%~na.mp4" 
)
 
echo 转换完成
 
pause
