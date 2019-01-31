REM echo "Killing Google Drive ..."
REM taskkill /IM googledrivesync.exe /F
REM echo "Google Drive killed"

echo "Killing Dropbox ..."
taskkill /IM Dropbox.exe /F
echo "Dropbox killed"

REM echo "Killing OneDrive ..."
REM taskkill /IM OneDrive.exe /F
REM echo "OneDrive killed"

echo "All Syncers killed"