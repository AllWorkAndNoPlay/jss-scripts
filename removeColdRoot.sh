#!/bin/bash

# Script removes example version of coldroot 
# details on coldroot https://objective-see.com/blog/blog_0x2A.html
# allworkandnoplay

#unload launchDaemon
launchctl unload /Library/LaunchDaemons/com.apple.audio.driver.plist

#close application
killall com.apple.audio.driver.plist

#delete the launchDaemon plist
rm /Library/LaunchDaemons/com.apple.audio.driver.plist

#delete the binary folder
rm -Rf /private/var/tmp/com.apple.audio.driver.app

#remove log
rm /private/var/tmp/adobe_logs.log