REM # The "chcp 65001" command is used to so that the "dir" command could interpret Hebrew correctly.
chcp 65001

REM  ##################################
REM  ### Create a folder corresponding to today's date ###
REM  ##################################
set BCK_ROOT_DIR=C:\Dropbox\Shay's\My Documents\Backup\Backups by Date
set year=%date:~-4%
set month=%date:~3,2%
set day=%date:~,2%
set TODAY=%year%-%month%-%day%
set BCK_DIR=%BCK_ROOT_DIR%\%TODAY%

md "%BCK_DIR%"

REM  ##########################
REM  ### Backup Unfinished .torrent files ###
REM  ##########################
md "%BCK_DIR%\Backed-Up Torrents"
copy "W:\Downloads\Bit-Torrent Files\Torrents\*.*" "%BCK_DIR%\Backed-Up Torrents\"

REM  ####################
REM  ### Backup Downloads list ###
REM  ####################
set FILE="%BCK_DIR%\Downloads List Backup.txt"
echo ============================= >> %FILE%
echo === COMPLETED TORRENT DOWNLOADS: === >> %FILE%
echo ============================= >> %FILE%
dir /b "W:\Downloads\Bit-Torrent Files" >> %FILE%
echo ... >> %FILE%
echo ... >> %FILE%
echo =============================== >> %FILE%
echo === INCOMPLETED TORRENT DOWNLOADS: === >> %FILE%
echo =============================== >> %FILE%
dir /b "W:\Downloads\Bit-Torrent Files\Torrents" >> %FILE%
echo ... >> %FILE%
echo ... >> %FILE%
echo =========================== >> %FILE%
echo === COMPLETED eMule DOWNLOADS: === >> %FILE%
echo =========================== >> %FILE%
dir /b "W:\Downloads\eMule Files\" >> %FILE%
echo ... >> %FILE%
echo ... >> %FILE%
echo ================ >> %FILE%
echo === BACKUP DONE === >> %FILE%
echo ================ >> %FILE%

REM  #########################
REM  ### Backup Movies and Series list ###
REM  #########################
set FILE="%BCK_DIR%\Movies and Series List Backup.txt"
echo =============== >> %FILE%
echo === MOVIES LIST: === >> %FILE%
echo =============== >> %FILE%
dir /b W:\Movies\ /s | findstr /vi ".srt" | findstr /vi ".sub" >> %FILE%
echo ... >> %FILE%
echo ... >> %FILE%
echo =============== >> %FILE%
echo === SERIES LIST: === >> %FILE%
echo =============== >> %FILE%
dir /b "W:\TV Series\A-OK" >> %FILE%
echo ... >> %FILE%
echo ... >> %FILE%
dir /b "W:\TV Series\Under Testing" >> %FILE%
echo ... >> %FILE%
echo ... >> %FILE%
echo ================ >> %FILE%
echo === BACKUP DONE === >> %FILE%
echo ================ >> %FILE%

REM  ###################
REM  ### Backup Software list ###
REM  ###################
set FILE="%BCK_DIR%\Software List Backup.txt"
echo Applications: >> %FILE%
echo =============== >> %FILE%
dir /b "W:\Dropbox\Software\Applications" >> %FILE%
echo ... >> %FILE%
echo CD Images: >> %FILE%
echo =============== >> %FILE%
dir /b "W:\Dropbox\Software\CD Images" >> %FILE%
echo ... >> %FILE%
echo Drivers: >> %FILE%
echo =============== >> %FILE%
dir /b "W:\Dropbox\Software\Drivers" >> %FILE%
echo ... >> %FILE%
echo Professional Software: >> %FILE%
echo =============== >> %FILE%
dir /b "W:\Dropbox\Software\Professional Software" >> %FILE%
echo ... >> %FILE%
echo ... >> %FILE%
echo ================ >> %FILE%
echo === BACKUP DONE === >> %FILE%
echo ================ >> %FILE%

REM  ###################
REM  ### Backup All Files list ###
REM  ###################
set FILE="%BCK_DIR%\All Files List.txt"
dir /s "W:\" >> %FILE%
echo ... >> %FILE%
echo ... >> %FILE%
echo ================ >> %FILE%
echo === BACKUP DONE === >> %FILE%
echo ================ >> %FILE%

REM  ###########################
REM  ### Delete the oldest backup directory ###
REM  ###########################
set BCK_LIST_FILE="%BCK_ROOT_DIR%\BCK_LIST.txt"
dir /ad /b /o:n "%BCK_ROOT_DIR%" > %BCK_LIST_FILE%
set /p FOLDER_TO_DEL=<%BCK_LIST_FILE%
rmdir /S /Q "%BCK_ROOT_DIR%\%FOLDER_TO_DEL%"
del %BCK_LIST_FILE%

REM ALL DONE