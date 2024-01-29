: <<EOF_BAT
@ECHO OFF
REM ***********************************************************
REM busybox.exeとバッチファイルだけでWindowsでシェルスクリプトを実行する
REM ***********************************************************
REM 同じフォルダにbusybox.exeを入れておく
REM busybox.exe 入手先
REM   https://frippery.org/busybox
REM   https://github.com/rmyorston/busybox-w32
REM 参考
REM   https://qiita.com/tetsuy/items/22cba0bc2048967b270a
REM ***********************************************************
"%~dp0busybox.exe" bash "%~f0" %*
exit /b %ERRORLEVEL%
EOF_BAT
#!/bin/bash
cd E:\\compose\
for file_name in `ls`
do
    print $file_name
done
