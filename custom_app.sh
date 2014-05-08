#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"
	# Delete the unlock_set_baidu_space in security_settings_picker.xml
	if [ -f $tempSmaliDir/res/xml/security_settings_picker.xml ];then
	echo ">>> delete unlock_set_baidu_space line in $tempSmaliDir/res/xml/security_settings_picker.xml"
	sed -i '/unlock_set_baidu_space/d' $tempSmaliDir/res/xml/security_settings_picker.xml
	fi
	
	# Remove the Official Verify Preference.
	#sed -i -e "/^\.method.*setOfficialVerifyPreference()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali
	
fi

