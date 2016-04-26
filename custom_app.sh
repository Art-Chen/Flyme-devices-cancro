apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Keyguard" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the field IccCardConstants$State;->NETWORK_LOCKED with IccCardConstants$State;->PERSO_LOCKED"
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#IccCardConstants$State;->NETWORK_LOCKED#IccCardConstants$State;->PERSO_LOCKED#g'   

elif [ "$apkBaseName" = "SystemUI" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the field IccCardConstants$State;->NETWORK_LOCKED with IccCardConstants$State;->PERSO_LOCKED"
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#IccCardConstants$State;->NETWORK_LOCKED#IccCardConstants$State;->PERSO_LOCKED#g'

elif [ "$apkBaseName" = "TelephonyProvider" ];then
        echo ">>> in custom_app for $apkBaseName to adjust the interface "getAllMessagesFromIcc" with "getAllMessagesFromIccExtended""
        find $tempSmaliDir/ -name "*.smali" | xargs sed -i 's#invoke-static {}, Landroid\/telephony\/SmsManager;->getAllMessagesFromIcc()Ljava\/util\/ArrayList#invoke-static {}, Landroid\/telephony\/SmsManager;->getAllMessagesFromIccExtended()Ljava\/util\/ArrayList#g'

# Untest Commit by Art_Chen to add something "zhuangbility".
# Prepare to Flyme5.
# Need build fullota to test.
elif [ "$apkBaseName" = "Settings" ];then 
 		echo ">>> in custom_app for $apkBaseName to add my Information in Setting/AboutPhone" 
 	sed -i '3a\    <Preference android:title="ROM作者" android:summary="Art_Chen" style="?android:preferenceInformationStyle" />'  $tempSmaliDir/res/xml/device_info_settings.xml 

fi
