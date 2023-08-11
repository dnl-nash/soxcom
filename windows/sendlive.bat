call config.bat
echo %user%|findstr user
if %errorlevel%==0 set /p user="Enter user"
echo %remote%|findstr remote
if %errorlevel%==0 set /p remote="Enter host"
sox -q -t waveaudio -d -t wav -|ssh %user%@%remote% "sox -t wav - -d -q"
