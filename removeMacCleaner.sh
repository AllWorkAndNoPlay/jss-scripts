#!/bin/sh

#based off of FastGM3's script

#remove apps
rm -R /Applications/Advanced\ Mac\ Cleaner.app
rm -R /Applications/Mac\ Ads\ Cleaner.app
rm -R /Applications/Mac\ Adware\ Cleaner.app
rm -R /Applications/_MACOSX/Advanced\ Mac\ Cleaner.app
rm -R /Applications/_MACOSX/Mac\ Ads\ Cleaner.app
rm -R /Applications/_MACOSX/Mac\ Adware\ Cleaner.app


#remove LaunchAgents
rm /Library/LaunchAgents/Adwarecleaner
rm /Library/LaunchAgents/hlpradc
rm /Library/LaunchAgents/hlpramc
rm /Library/LaunchAgents/hlprawc
rm /Library/LaunchAgents/com.adscleaner.hlpradc.plist
rm /Library/LaunchAgents/com.pcv.hlpramcn.plist


#remove User LaunchAgents
rm /Users/*/Library/LaunchAgents/Adwarecleaner
rm /Users/*/Library/LaunchAgents/hlpradc
rm /Users/*/Library/LaunchAgents/hlpramc
rm /Users/*/Library/LaunchAgents/hlprawc
rm /Users/*/Library/LaunchAgents/com.adscleaner.hlpradc.plist
rm /Users/*/Library/LaunchAgents/com.adwarecleaner.hlprawc.plist
rm /Users/*/Library/LaunchAgents/com.pcv.hlpramcn.plist


#removes app if present from Trash Can
rm -R /Users/*/.Trash/Advanced\ Mac\ Cleaner.app
rm -R /Users/*/.Trash/Mac\ Ads\ Cleaner.app
rm -R /Users/*/.Trash/Mac\ Adware\ Cleaner.app


#removes app if present from User's Desktop
rm -R /Users/*/Desktop/Advanced\ Mac\ Cleaner.app
rm -R /Users/*/Desktop/Mac\ Ads\ Cleaner.app
rm -R /Users/*/Desktop/Mac\ Adware\ Cleaner.app


#removes from users Library Folder
rm -R /Users/*/Library/Advanced\ Mac\ Cleaner
rm -R /Users/*/Library/Mac\ Adware\ Cleaner
rm -R /Users/*/Library/Mac\ Ads\ Cleaner
rm -R /Users/*/Library/AdvancedMacCleaner
rm -R /Users/*/Library/MacAdwareCleaner
rm -R /Users/*/Library/MacAdsCleaner
rm -R /Users/*/Library/hlpradc
rm -R /Users/*/Library/hlpramc
rm -R /Users/*/Library/hlprawc


#removes from users Library Caches Folder
rm /Users/*/Library/Caches/com.adscleaner.hlpradc
rm /Users/*/Library/Caches/com.adwarecleaner.hlprawc
rm /Users/*/Library/Caches/com.pcvark.Mac-Adware-Cleaner
rm /Users/*/Library/Caches/com.techyutils.cleaner
rm /Users/*/Library/Caches/com.techyutils.Mac-Ads-Cleaner
rm /Users/*/Library/Caches/com.pcvark.Mac-Adware-Cleaner.binarycookies
rm /Users/*/Library/Cookies/com.techyutils.cleaner.binarycookies
rm /Users/*/Library/Cookies/com.techyutils.Mac-Ads-Cleaner.binarycookies


#removes from users Library Applications Support Folder
rm -R /Users/*/Library/Applications\ Support/Mac\ Ads\ Cleaner
rm -R /Users/*/Library/Applications\ Support/Mac\ Adware\ Cleaner
rm -R /Users/*/Library/Applications\ Support/Mac\ File\ Opner
rm -R /Users/*/Library/Applications\ Support/Advanced\ Mac\ Cleaner
rm -R /Users/*/Library/Applications\ Support/awc
rm -R /Users/*/Library/Applications\ Support/amc
rm -R /Users/*/Library/Applications\ Support/adc



#removes from users Library Preferences Folder
rm /Users/*/Library/Preferences/Mac Adware Cleaner
rm /Users/*/Library/Preferences/Adware
rm /Users/*/Library/Preferences/Adwarecleaner
rm /Users/*/Library/Preferences/pcvark
rm /Users/*/Library/Preferences/com.PCvark.Advanced-Mac-Cleaner.plist
rm /Users/*/Library/Preferences/com.adscleaner.hlpradc.plist
rm /Users/*/Library/Preferences/com.adscleaner.hlpradc.plist.
rm /Users/*/Library/Preferences/com.adwarecleaner.hlprawc.plist
rm /Users/*/Library/Preferences/com.adwarecleaner.hlprawc.plist.
rm /Users/*/Library/Preferences/com.pcvark.Mac-Adware-Cleaner.plist
rm /Users/*/Library/Preferences/com.pcvark.Mac-File-Opener.plist
rm /Users/*/Library/Preferences/com.pcv.hlpramc.plist
rm /Users/*/Library/Preferences/com.techyutils.Mac-Ads-Cleaner.plist
rm /Users/*/Library/Preferences/com.techyutils.cleaner.plist


#removes from users Library Log Folder
rm /Users/*/Library/Logs/Mac Adware Cleaner
rm /Users/*/Library/Logs/Hlpramc
rm /Users/*/Library/Logs/Hlprawc
rm /Users/*/Library/Logs/Advanced\ Mac\ Cleaner.log
rm /Users/*/Library/Logs/Mac\ Ads\ Cleaner.log
rm /Users/*/Library/Logs/Mac\ Adware\ Cleaner.log
rm /Users/*/Library/Logs/helperamc.log
rm /Users/*/Library/Logs/hlpradc.log
rm /Users/*/Library/Logs/hlprawc.log


#removes from users Library Saved Application Folder
rm -R /Users/*/Library/Saved\ Application\ State/Pcvark
rm -R /Users/*/Library/Saved\ Application\ State/Mac\ Adware\ Cleaner
rm -R /Users/*/Library/Saved\ Application\ State/Advanced\ Mac\ Cleaner
rm -R /Users/*/Library/Saved\ Application\ State/Mac\ Ads\ Cleaner