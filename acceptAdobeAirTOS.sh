#!/bin/sh

#User Templates
for USER_TEMPLATE in "/System/Library/User Template"/*
do
    /bin/mkdir -p "${USER_TEMPLATE}"/Library/Application\ Support/Adobe/AIRl
    /usr/bin/touch "${USER_TEMPLATE}"/Library/Application\ Support/Adobe/AIR/updateDisabledl
    /bin/echo "3" > "${USER_TEMPLATE}"/Library/Application\ Support/Adobe/AIR/eulaAccepted
done


# home folders
for USER_HOME in /Users/*
do
    USER_UID=`basename "${USER_HOME}"`
    /bin/mkdir -p "${USER_HOME}"/Library/Application\ Support/Adobe/AIRl
    /usr/bin/touch "${USER_HOME}"/Library/Application\ Support/Adobe/AIR/updateDisabledl
    /bin/echo "3" > "${USER_HOME}"/Library/Application\ Support/Adobe/AIR/eulaAccepted

    /usr/sbin/chown "${USER_UID}" "${USER_HOME}"/Library/Application\ Support/Adobe/AIR
    /usr/sbin/chown "${USER_UID}" "${USER_HOME}"/Library/Application\ Support/Adobe/AIR/updateDisabled
    /usr/sbin/chown "${USER_UID}" "${USER_HOME}"/Library/Application\ Support/Adobe/AIR/eulaAccepted
done

exit 0