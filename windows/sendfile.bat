call config.bat
echo %user%|findstr user
if %errorlevel%==0 set /p user="Enter user"
echo %remote%|findstr remote
if %errorlevel%==0 set /p remote="Enter host"
echo %file%|findstr file
if %errorlevel%==0 set /p file="Enter file"
sox -q %file% -t wav -|ssh %user%@%remote% "sox -t wav - -d -q"
