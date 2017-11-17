#!/bin/sh

launchctl unload /Users/*/Library/LaunchAgents/com.jdibackup.JustCloud.autostart.plist
launchctl unload /Users/*/Library/LaunchAgents/com.jdibackup.JustCloud.notify.plist

rm -Rf /Applications/JustCloud.app

rm -Rf /Library/Application\ Support/*JustCloud*

rm -Rf /Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/*JustCloud*

rm -Rf /Library/LaunchDaemons/*JustCloud*

rm -Rf /Users/*/Library/Preferences/*JustCloud*

rm -Rf /Users/*/Library/Application\ Support/*JustCloud*

rm -Rf /Users/*/Library/LaunchAgents/*JustCloud*

rm -Rf /Users/*/Library/Logs/*JustCloud*

rm -Rf /Users/*/Library/Caches/*JustCloud*

rm -Rf /Users/*/Library/Safari/Extensions/*JustCloud*

rm -Rf /Users/*/Library/Saved\ Application\ State/*JustCloud*

rm -Rf /Users/*/Library/Application\ Support/Firefox/Profiles/*/extensions/*JustCloud*

rm -Rf /private/tmp/*JustCloud*

rm -Rf /private/var/db/receipts/*JustCloud*

killall JustCloud

exit 0