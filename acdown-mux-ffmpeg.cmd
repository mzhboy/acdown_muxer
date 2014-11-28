@echo off
CLS
FOR /D %%D IN (*) DO (
	echo :: %%D
	pushd .
	CD "%%D"
	IF EXIST *.flv (
		FOR %%L IN (*.acplay) do (
			echo ==== %%L
			IF NOT EXIST "%%~nL.mp4" (
				FOR /F "usebackq delims=" %%M IN (`DIR /B "%%~nL*.flv"`) DO (echo file '%%M'>>"%%~nL.list")
				ffmpeg -y -f concat -i "%%~nL.list" -movflags +faststart -codec copy "%%~nL.mp4"
			)
		)
	)
	popd
)
