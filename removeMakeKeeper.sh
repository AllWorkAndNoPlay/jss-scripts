#!/bin/sh

launchctl unload /Library/LaunchDaemons/com.zeobit.MacKeeper.plugin.AntiTheft.daemon
launchctl unload /Library/LaunchDaemons/com.zeobit.MacKeeper.AntiVirus

launchctl unload /Users/*/Library/LaunchAgents/com.zeobit.MacKeeper.Helper
launchctl unload /Users/*/Library/LaunchAgents/com.zeobit.MacKeeper.Helper.plist
launchctl unload /Users/*/Library/LaunchAgents/com.zeobit.MacKeeper.plugin.Backup.agent

rm -Rf /Applications/MacKeeper.app

rm -Rf /Library/Application\ Support/MacKeeper
rm -Rf /Library/Application\ Support/MacKeeper\ Helper

rm -Rf /Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mackeeper.mackeeper.sfl

rm -Rf /Library/Preferences/.3FAD0F65-FC6E-4889-B975-B96CBF807B78

rm -Rf /Library/LaunchDaemons/*zeobit*
rm -Rf /Library/LaunchDaemons/*MacKeeper*

rm -Rf /Users/*/Documents/MacKeeper\ Backups

rm -Rf /Users/*/Library/Preferences/*another\ invisible\ document
rm -Rf /Users/*/Library/Preferences/*zeobit*
rm -Rf /Users/*/Library/Preferences/*mackeeper*

rm -Rf /Users/*/Library/Application\ Support/MacKeeper\ Helper/NoticeEngine.plugin

rm -Rf /Users/*/Library/LaunchAgents/*zeobit*
rm -Rf /Users/*/Library/LaunchAgents/*MacKeeper*

rm -Rf /Users/*/Library/Logs/*zeobit*
rm -Rf /Users/*/Library/Logs/*MacKeeper*

rm -Rf /Users/*/Library/Caches/*zeobit*
rm -Rf /Users/*/Library/Caches/*MacKeeper*

rm -Rf /Users/*/Library/Safari/Extensions/*zeobit*
rm -Rf /Users/*/Library/Safari/Extensions/*MacKeeper*

rm -Rf /Users/*/Library/Application\ Support/Firefox/Profiles/*/extensions/*zeobit*
rm -Rf /Users/*/Library/Application\ Support/Firefox/Profiles/*/extensions/*MacKeeper*

rm -Rf /private/tmp/com.mackeeper.MacKeeper.Installer.config
rm -Rf /private/tmp/com.zeobit.MacKeeper.Installer.config

rm -Rf /private/var/db/receipts/*MacKeeper*


killall MacKeeper

exit 0