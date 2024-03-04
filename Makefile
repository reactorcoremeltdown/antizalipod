all: data

connect:
	adb devices

apps: connect
	adb install apks/antennapod.apk
	adb install apks/audiorecorder.apk
	adb install apks/filemanager.apk
	adb install apks/vanillaplus.apk
	adb install apks/voice.apk
	adb install apks/unlauncher.apk

data: apps
	adb restore unlauncher/data.backup
