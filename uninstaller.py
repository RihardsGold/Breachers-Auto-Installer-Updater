#import
import ppadb
from ppadb.client import Client as AdbClient

#file prep
client = AdbClient(host="127.0.0.1", port=5037)
devices = client.devices()
for device in devices:
    print(device.serial)
    device.uninstall("com.TriangleFactory.Breachers")