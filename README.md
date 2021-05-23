# DeviceReconnect
A scrip that will disconnect and reconnect your selected device or port.

I use it to disable and re-enable a Titan Ridge thunderbolt PCIE card as it does not play well with my motherboard. So it does not make a correct connection with a device if i plug it in. Usually a restart would fix it but with this script, no restart is needed.

Warning: This is similar to pulling the cable from the system, so if any data storage devices are properly connected to the OS and not properly ejected beforehand. Data loss may accur. 


Instructions:

Copy the .bat file and devcon.exe file to where ever you like, just keep them in the same folder. 




If for some reason you want a devcon.exe for a 32bit OS or straight from Microsoft's servers then you can get any flavor you like from here: https://superuser.com/questions/1002950/quick-method-to-install-devcon-exe

Find the Hardware ID or Device Instance ID in Device Manager. Easyest way to do so is:

Device Manager -> View -> Device by connection...
From there expand:
![image](https://user-images.githubusercontent.com/12912602/119267349-e4ce3400-bbf6-11eb-8f6f-15765c6f8a9d.png)

From there expand Pci bus and look for the desired device.
Once found you must chose if you want to disable/re-enable the device or the port.

1)
If you want the port then rightclick the port and chose properties:
![image](https://user-images.githubusercontent.com/12912602/119267479-80f83b00-bbf7-11eb-936e-a8905fd1a1e8.png)

Then under details copy the Device Instance Path
![image](https://user-images.githubusercontent.com/12912602/119267520-b2710680-bbf7-11eb-863e-54a966fb031b.png)
Note: Device Instance path may change with a major windows update, but will remain persistant between reboots.

Edit the .bat file and in the slot type @ infront and then paste what you copied.
Save and run the bat file as admin.

2)
If you want the device then rightclick the device and chose properties.

Then under details copy the Hardware ID:
![image](https://user-images.githubusercontent.com/12912602/119267786-b7828580-bbf8-11eb-9833-1378dd44ee9b.png)
Note: Any device that has the same hardware ID may also be affected (2 of the same mudel drives for example.) In that case use the Device Instance method described above exept with device properties and not the port properties.

Edit the .bat file and in the paste slot paste what you copied. (add @ infront of the paste if you used the Instance path)
Save and run the bat file as admin.

_____________________________________________________

I recommend renaming the .bat file to something that tells you what it is disconnecting and reconnecting.
