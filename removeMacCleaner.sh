#!/bin/sh

#based off of FastGM3's script


#unload LaunchAgents
launchctl unload /Library/LaunchAgents/Adwarecleaner
launchctl unload /Library/LaunchAgents/com.pcv.hlpradc.plist
launchctl unload /Library/LaunchAgents/com.pcv.hlpramc.plist
launchctl unload /Library/LaunchAgents/com.pcv.hlpramc.plist
launchctl unload /Library/LaunchAgents/com.pcv.hlpramcn.plist
launchctl unload /Library/LaunchAgents/com.adscleaner.hlpradc.plist


#remove apps
rm -Rf /Applications/Advanced\ Mac\ Cleaner.app
rm -Rf /Applications/Mac\ Ads\ Cleaner.app
rm -Rf /Applications/Mac\ Adware\ Cleaner.app
rm -Rf /Applications/_MACOSX/Advanced\ Mac\ Cleaner.app
rm -Rf /Applications/_MACOSX/Mac\ Ads\ Cleaner.app
rm -Rf /Applications/_MACOSX/Mac\ Adware\ Cleaner.app


#remove LaunchAgents
rm -f /Library/LaunchAgents/Adwarecleaner
rm -f /Library/LaunchAgents/*hlpradc*
rm -f /Library/LaunchAgents/*hlpramc*
rm -f /Library/LaunchAgents/*hlprawc*
rm -f /Library/LaunchAgents/com.adscleaner.hlpradc.plist


#remove User LaunchAgents
rm -f /Users/*/Library/LaunchAgents/Adwarecleaner
rm -f /Users/*/Library/LaunchAgents/*hlpradc*
rm -f /Users/*/Library/LaunchAgents/*hlpramc*
rm -f /Users/*/Library/LaunchAgents/*hlprawc*
rm -f /Users/*/Library/LaunchAgents/com.adscleaner.hlpradc.plist
rm -f /Users/*/Library/LaunchAgents/com.adwarecleaner.hlprawc.plist
rm -f /Users/*/Library/LaunchAgents/com.pcv.hlpramcn.plist


#removes app if present from Trash Can
rm -Rf /Users/*/.Trash/Advanced\ Mac\ Cleaner.app
rm -Rf /Users/*/.Trash/Mac\ Ads\ Cleaner.app
rm -Rf /Users/*/.Trash/Mac\ Adware\ Cleaner.app


#removes app if present from User's Desktop
rm -Rf /Users/*/Desktop/Advanced\ Mac\ Cleaner.app
rm -Rf /Users/*/Desktop/Mac\ Ads\ Cleaner.app
rm -Rf /Users/*/Desktop/Mac\ Adware\ Cleaner.app


#removes from users Library Folder
rm -Rf /Users/*/Library/Advanced\ Mac\ Cleaner
rm -Rf /Users/*/Library/Mac\ Adware\ Cleaner
rm -Rf /Users/*/Library/Mac\ Ads\ Cleaner
rm -Rf /Users/*/Library/AdvancedMacCleaner
rm -Rf /Users/*/Library/MacAdwareCleaner
rm -Rf /Users/*/Library/MacAdsCleaner
rm -Rf /Users/*/Library/*hlpradc*
rm -Rf /Users/*/Library/*hlpramc*
rm -Rf /Users/*/Library/*hlprawc*


#removes from users Library Caches Folder
rm -f /Users/*/Library/Caches/com.adscleaner.hlpradc
rm -f /Users/*/Library/Caches/com.adwarecleaner.hlprawc
rm -f /Users/*/Library/Caches/com.pcvark.Mac-Adware-Cleaner
rm -f /Users/*/Library/Caches/com.techyutils.cleaner
rm -f /Users/*/Library/Caches/com.techyutils.Mac-Ads-Cleaner
rm -f /Users/*/Library/Caches/com.pcvark.Mac-Adware-Cleaner.binarycookies
rm -f /Users/*/Library/Cookies/com.techyutils.cleaner.binarycookies
rm -f /Users/*/Library/Cookies/com.techyutils.Mac-Ads-Cleaner.binarycookies


#removes from users Library Applications Support Folder
rm -R /Users/*/Library/Applications\ Support/Mac\ Ads\ Cleaner
rm -R /Users/*/Library/Applications\ Support/Mac\ Adware\ Cleaner
rm -R /Users/*/Library/Applications\ Support/Mac\ File\ Opner
rm -R /Users/*/Library/Applications\ Support/Advanced\ Mac\ Cleaner
rm -R /Users/*/Library/Applications\ Support/awc
rm -R /Users/*/Library/Applications\ Support/amc
rm -R /Users/*/Library/Applications\ Support/adc



#removes from users Library Preferences Folder
rm -f /Users/*/Library/Preferences/Mac\ Adware\ Cleaner
rm -f /Users/*/Library/Preferences/Adware
rm -f /Users/*/Library/Preferences/Adwarecleaner
rm -f /Users/*/Library/Preferences/pcvark
rm -f /Users/*/Library/Preferences/com.PCvark.Advanced-Mac-Cleaner.plist
rm -f /Users/*/Library/Preferences/com.adscleaner.hlpradc.plist
rm -f /Users/*/Library/Preferences/com.adscleaner.hlpradc.plist.
rm -f /Users/*/Library/Preferences/com.adwarecleaner.hlprawc.plist
rm -f /Users/*/Library/Preferences/com.adwarecleaner.hlprawc.plist.
rm -f /Users/*/Library/Preferences/com.pcvark.Mac-Adware-Cleaner.plist
rm -f /Users/*/Library/Preferences/com.pcvark.Mac-File-Opener.plist
rm -f /Users/*/Library/Preferences/com.pcv.hlpramc.plist
rm -f /Users/*/Library/Preferences/com.techyutils.Mac-Ads-Cleaner.plist
rm -f /Users/*/Library/Preferences/com.techyutils.cleaner.plist


#removes from users Library Log Folder
rm -f /Users/*/Library/Logs/Mac\ Adware\ Cleaner
rm -f /Users/*/Library/Logs/Hlpramc
rm -f /Users/*/Library/Logs/Hlprawc
rm -f /Users/*/Library/Logs/Advanced\ Mac\ Cleaner.log
rm -f /Users/*/Library/Logs/Mac\ Ads\ Cleaner.log
rm -f /Users/*/Library/Logs/Mac\ Adware\ Cleaner.log
rm -f /Users/*/Library/Logs/helperamc.log
rm -f /Users/*/Library/Logs/hlpradc.log
rm -f /Users/*/Library/Logs/hlprawc.log


#removes from users Library Saved Application Folder
rm -Rf /Users/*/Library/Saved\ Application\ State/Pcvark
rm -Rf /Users/*/Library/Saved\ Application\ State/Mac\ Adware\ Cleaner
rm -Rf /Users/*/Library/Saved\ Application\ State/Advanced\ Mac\ Cleaner
rm -Rf /Users/*/Library/Saved\ Application\ State/Mac\ Ads\ Cleaner