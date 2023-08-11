call config.bat
echo %user%|findstr user
if %errorlevel%==0 set /p user="Enter user"
echo %remote%|findstr remote
if %errorlevel%==0 set /p remote="Enter host"
ssh %user%@%remote% "sox -d -q -t wav -"|sox -t wav - -q -t waveaudio -d
