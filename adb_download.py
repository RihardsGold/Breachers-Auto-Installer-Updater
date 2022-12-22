#import
import wget
import zipfile

#Downloading Adb
print("\nDownloading Adb.")
adb_url = "https://github.com/AngelCMHxD/Breachers-VR-Wiki/releases/download/ADB/adb.zip"
wget.download(adb_url,"Adb.zip")
print("\nDone!")

#Unzipping Adb.zip
with zipfile.ZipFile("Adb.zip", "r") as zip_ref:
    zip_ref.extractall("./Adb")
    print("Adb unzipped!")