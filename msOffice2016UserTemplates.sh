#!/bin/bash

for USER_TEMPLATE in "/System/Library/User Template"/*
do
	#User Templates
	# Set Office 2016 First Run Items as Completed
	/usr/bin/defaults write "${USER_TEMPLATE}"/Library/Preferences/com.microsoft.Word kSubUIAppCompletedFirstRunSetup1507 -bool true
	/usr/bin/defaults write "${USER_TEMPLATE}"/Library/Preferences/com.microsoft.Excel kSubUIAppCompletedFirstRunSetup1507 -bool true
	/usr/bin/defaults write "${USER_TEMPLATE}"/Library/Preferences/com.microsoft.PowerPoint kSubUIAppCompletedFirstRunSetup1507 -bool true
	/usr/bin/defaults write "${USER_TEMPLATE}"/Library/Preferences/com.microsoft.onenote.mac FirstRunExperienceCompletedO15 -bool true
	/usr/bin/defaults write "${USER_TEMPLATE}"/Library/Preferences/com.microsoft.Outlook kSubUIAppCompletedFirstRunSetup1507 -bool true
	/usr/bin/defaults write "${USER_TEMPLATE}"/Library/Preferences/com.microsoft.Outlook FirstRunExperienceCompletedO15 -bool true
	# Set Office 2016 Auto Update to Manual
	/usr/bin/defaults write "${USER_TEMPLATE}"/Library/Preferences/com.microsoft.autoupdate2 HowToCheck Manual
done
  

for USER_HOME in /Users/*
do
	USER_UID=`basename "${USER_HOME}"`
	if [ ! "${USER_UID}" = "Shared" ]; then
		if [ ! -d "${USER_HOME}"/Library/Preferences ]; then
			#make folders if needed
			/bin/mkdir -p "${USER_HOME}"/Library/Preferences
			/usr/sbin/chown "${USER_UID}" "${USER_HOME}"/Library
			/usr/sbin/chown "${USER_UID}" "${USER_HOME}"/Library/Preferences
		fi
		if [ -d "${USER_HOME}"/Library/Preferences ]; then
			#user settings
			# Set Office 2016 First Run Items as Completed
        	/usr/bin/defaults write "${USER_HOME}"/Library/Preferences/com.microsoft.Word kSubUIAppCompletedFirstRunSetup1507 -bool true
        	/usr/bin/defaults write "${USER_HOME}"/Library/Preferences/com.microsoft.Excel kSubUIAppCompletedFirstRunSetup1507 -bool true
        	/usr/bin/defaults write "${USER_HOME}"/Library/Preferences/com.microsoft.PowerPoint kSubUIAppCompletedFirstRunSetup1507 -bool true
        	/usr/bin/defaults write "${USER_HOME}"/Library/Preferences/com.microsoft.onenote.mac kSubUIAppCompletedFirstRunSetup1507 -bool true
        	/usr/bin/defaults write "${USER_HOME}"/Library/Preferences/com.microsoft.Outlook kSubUIAppCompletedFirstRunSetup1507 -bool true
        	/usr/bin/defaults write "${USER_HOME}"/Library/Preferences/com.microsoft.Outlook FirstRunExperienceCompletedO15 -bool true
        	# Set Office 2016 Auto Update to Manual
        	/usr/bin/defaults write "${USER_HOME}"/Library/Preferences/com.microsoft.autoupdate2 HowToCheck Manual
        	
        	#chowns
        	/usr/sbin/chown "${USER_UID}" "${USER_HOME}"/Library/Preferences/com.microsoft.Word.plist
        	/usr/sbin/chown "${USER_UID}" "${USER_HOME}"/Library/Preferences/com.microsoft.Excel.plist
        	/usr/sbin/chown "${USER_UID}" "${USER_HOME}"/Library/Preferences/com.microsoft.PowerPoint.plist
        	/usr/sbin/chown "${USER_UID}" "${USER_HOME}"/Library/Preferences/com.microsoft.onenote.mac.plist
        	/usr/sbin/chown "${USER_UID}" "${USER_HOME}"/Library/Preferences/com.microsoft.Outlook.plist
        	/usr/sbin/chown "${USER_UID}" "${USER_HOME}"/Library/Preferences/com.microsoft.autoupdate2.plist
		fi
    fi
done

exit 0