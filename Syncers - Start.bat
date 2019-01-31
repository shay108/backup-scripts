REM ### The start command is used to run in backgroup (like '&' in Linux)
REM ### The first two "" (double quotes) after the start command are needed
REM ### They are used for title of the window (you have to use them if you want to use quotes again in the path)
REM ### For more info - Look at the order of parameters of the 'start' command

REM echo "Starting Google Drive ..."
REM start "" "C:\Program Files (x86)\Google\Drive\googledrivesync.exe"
REM echo "GoogleDrive started"

echo "Starting Dropbox ..."
start "" "C:\Program Files (x86)\Dropbox\Client\Dropbox.exe" /home
echo "Dropbox started"

REM echo "Starting OneDrive ..."
REM start "" "C:\Users\Shay\AppData\Local\Microsoft\OneDrive\OneDrive.exe"
REM echo "OneDrive started"

echo "All Syncers started"