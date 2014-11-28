@echo off
CLS
FOR /D %%D IN (*) DO (
	echo :: %%D
	pushd .
	CD "%%D"
	IF NOT EXIST *.list (
		FOR %%L IN (*.acplay) do (
		echo === %%L
		FOR /F "usebackq delims=" %%M IN (`DIR /B "%%~nL*.flv"`) DO (echo file '%%M'>>"%%~nL.list")
		ffmpeg -y -f concat -i "%%~nL.list" -movflags +faststart -codec copy "%%~nL.mp4"
		)
	)
	popd
)
