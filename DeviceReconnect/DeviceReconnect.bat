set DEVICE_INSTANCE_PATH_OR_HARDWARE_ID="_PASTE_HERE_"
"%~dp0DevCon.exe" disable %DEVICE_INSTANCE_PATH_OR_HARDWARE_ID%
timeout /t 3
"%~dp0DevCon.exe" enable %DEVICE_INSTANCE_PATH_OR_HARDWARE_ID%