@echo off
pip install wget
pip install requests
pip install pure-python-adb
cls

cls

python adb_download.py
python breachers_download.py

cd adb
echo "Unplug all devices except for your Quest 2 / Pro from your computer."
timeout /T 10
powershell ./adb
cls
echo "Connect your headstet via cable. Upon doing so allow USB debugging from this pc."
powershell ./adb devices
echo "^^^ If you see your headset here, press any key. If you don't do the step above."
echo "This program will wait for 10 minutes, if you finish the task above faster, press any key."
timeout /T 600
powershell ./adb devices
cd ..
python installer.py
timeout /NOBREAK 10
cd adb

echo "The code will do 3 forced restarts as to ensure the game is booting up correctly. If it still doesn't work, try one more restart."
powershell ./adb reboot
echo "Reboot 1 out of 3"
timeout /NOBREAK 40
echo "Reboot 2 out of 3"
timeout /NOBREAK 40
echo "Reboot 3 out of 3"
timeout /NOBREAK 40
"Check the game, see it if works."
cd ..
PAUSE