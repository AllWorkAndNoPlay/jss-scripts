#!/bin/bash

# Identifies returns team ID, bundle ID for ktext in /Library/Extensions/

#google form
#see https://eureka.ykyuen.info/2014/07/30/submit-google-forms-by-curl-command/ to set these values
formID="yourGoogle_FormID_Here"
field1="entry.google_form_field_nameID_1"
field2="entry.google_form_field_nameID_2"
field3="entry.google_form_field_nameID_3"

#create a google form
#add two text fields
#disable requiring sign in
#create a result form
#in select A B C columns, create a pivet table
#in pivot table add rows column B, add rows column C
#in pivot table add values column B, add rows column C


# get all kext in /Library/Extensions/
kext=($( ls -a /Library/Extensions/ | grep .kext ))

# Report the details of all found
if [ ${#kext[@]} != "0" ];
then
    for (( loopCounter=0; loopCounter<${#kext[@]}; loopCounter++ ))
    do
        # Get the team ID for the kext
        teamid[$loopCounter]=$( codesign -d -vvvv /Library/Extensions/${kext[$loopCounter]} 2>&1 | grep "Authority=Developer ID Application:" | cut -d"(" -f2 | tr -d ")" )

        # Get the CFBundleIdentifier for the kext
        bundid[$loopCounter]=$( defaults read /Library/Extensions/"${kext[$loopCounter]}"/Contents/Info.plist CFBundleIdentifier )

		#troubleshooting echo
        #echo "ktext: ${kext[$loopCounter]} Team ID: ${teamid[$loopCounter]} Bundle ID: ${bundid[$loopCounter]}"
        
        curl --silent https://docs.google.com/forms/d/$formID/formResponse -d ifq -d $field1=${teamid[$loopCounter]} -d $field2=${bundid[$loopCounter]} -d $field3=${kext[$loopCounter]} -d submit=Submit > /dev/null
    done
fi

exit
