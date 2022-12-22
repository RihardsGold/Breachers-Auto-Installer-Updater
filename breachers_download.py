#import
import wget
import requests
import zipfile

#Downloading Game File
x = requests.get("https://api.github.com/repos/TriangleFactory/Breachers/releases/latest")
res = x.json()
print("Downloading the game files.")
url = res["assets"][0]["browser_download_url"]
wget.download(url, "Breachers.zip")
print("\nDone!")


#Unzipping Breachers.zip
print("Unzipping!")
with zipfile.ZipFile("Breachers.zip", "r") as zip_ref:
    zip_ref.extractall("./Breachers")
    print("Game unzipped!")