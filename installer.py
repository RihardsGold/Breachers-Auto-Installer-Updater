#import
import glob
import ppadb
from ppadb.client import Client as AdbClient
import os


#fileprep
apk = glob.glob("./Breachers/*.apk")
obb = glob.glob("./Breachers/*.obb")
apk_file = apk[0]
obb_file = obb[0]
obb_name = obb_file.split()[-1]
obb_name = os.listdir("./Breachers")[1]
#adb
print("Installing the game!")
client = AdbClient(host="127.0.0.1", port=5037)

devices = client.devices()
for device in devices:
    print(device.serial)
    device.install(apk_file)
    device.push(obb_file,f"/sdcard/Android/obb/com.TriangleFactory.Breachers/{obb_name}")

print("Done installing!")
