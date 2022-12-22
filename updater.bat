@echo off
pip install wget
pip install requests
pip install pure-python-adb
cls
echo "Downloading Adb."
python adb_download.py

cd adb
powershell ./Adb 
powershell ./adb devices
cls
echo "^^^^ Make sure your headset is plugged in and you have given file access."
echo "This program will wait for 10 minutes. If you've already done this or just did it, skip the timer."
timeout /T 600
cd ..
python uninstaller.py
echo "Old version uninstalled."
python breachers_download.py
echo "Breachers has been downloaded."
python installer.py
echo "Game has been installed."
cd adb

echo "The code will do 3 forced restarts as to ensure the game is booting up correctly. If it still doesn't work, try one more restart."
powershell ./adb reboot
echo "Reboot 1 out of 3"
timeout /NOBREAK 40
echo "Reboot 2 out of 3"
timeout /NOBREAK 40
echo "Reboot 3 out of 3"
timeout /NOBREAK 40
echo "Check the game, see it if works."
cd ..
PAUSE



