#!/bin/bash

# used find to identifies ktext, and then returns team ID, bundle ID, path for each located ktext

# google form
# see https://eureka.ykyuen.info/2014/07/30/submit-google-forms-by-curl-command/ to set these values
formID="yourGoogle_FormID_Here"
field1="entry.google_form_field_nameID_1"
field2="entry.google_form_field_nameID_2"
field3="entry.google_form_field_nameID_3"

# create a google form
# add two text fields
# disable requiring sign in
# create a result form
# in select A B C columns, create a pivet table
# in pivot table add rows column B, add rows column C
# in pivot table add values column B, add rows column C


# use find to scan ktext
find / \( -type d -name "System" -prune \) -o \( -type d -name "private" -prune \) -o \( -type d -name "StagedExtensions" -prune \) -o \( -type d -name "dev" -prune \) -o \( -name "*.kext" -type d -print \) | while read line; do

# Line Break
echo " "

# BackSlash for spaces
thePath=$(echo ${line} | awk '{gsub(/ /,"\\ ");print}')

# Get the team ID for the kext
teamid[$loopCounter]=$( codesign -d -vvvv ${thePath} 2>&1 | grep "Authority=Developer ID Application:" | cut -d"(" -f2 | tr -d ")" )

# Get the CFBundleIdentifier for the kext
bundid[$loopCounter]=$( defaults read ${thePath}/Contents/Info.plist CFBundleIdentifier )

# troubleshooting echo
echo " "
echo "Line: ${line}"
echo "Path: ${thePath}"
echo "Team ID: ${teamid}"
echo "Bundle ID: ${bundid}"

# curl to submit result to google form
# silent and /dev/nul to suppress results of curl in log
curl --silent https://docs.google.com/forms/d/$formID/formResponse -d ifq -d "$field1=${teamid}" -d "$field2=${teamid}" -d "$field3=${line}" -d submit=Submit > /dev/null
done

exit

