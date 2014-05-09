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

if  [ "$apkBaseName" = "BaiduMusicPlayer" ];then
	echo ">>> in custom_app $apkBaseName"
	# Fix playing music
	sed -i 's#invoke-virtual {p0, v0}, Lcom/baidu/musicplayer/playing/PlayingActivity;->setTouchPadListener(Landroid/app/Activity$TouchPadListener;)V#invoke-virtual {p0, v0}, Landroid/app/Activity;->setTouchPadListener(Landroid/app/Activity$TouchPadListener;)V#g' $tempSmaliDir/smali/com/baidu/musicplayer/playing/PlayingActivity.smali
fi
