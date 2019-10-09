#!/bin/bash

# used mdfind to identifies 32-bit Applications, and then returns the application name

# google form
# see https://eureka.ykyuen.info/2014/07/30/submit-google-forms-by-curl-command/ to set these values
formID="yourGoogleDockID" #yourGoogle_FormID_Here"
field1="entry.IDNUMBER" #entry.google_form_field_nameID_1"
field2="entry.IDNUMBER" #entry.google_form_field_nameID_2"
field3="entry.IDNUMBER" #entry.google_form_field_nameID_3"

# create a google form
# add two text fields
# disable requiring sign in
# create a result form
# in select A B C columns, create a pivet table
# in pivot table add rows column B, add rows column C
# in pivot table add values column B, add rows column C


#use scutil to get ComputerName
theComputerName=$( scutil --get ComputerName )

# print start 
echo "Scanning for 32-bit .app"

# use find to scan ktext
/usr/bin/mdfind "kMDItemExecutableArchitectures == 'i386' && kMDItemExecutableArchitectures != 'x86_64' && kMDItemKind == 'Application'" | grep -v "/System/" | while read line; do

    # The Application Name
    appName[$loopCounter]=$( echo ${line} | sed 's:.*/::' )
    
    # The application with path 
    # add BackSlash for spaces
    thePath=$(echo ${line} | awk '{gsub(/ /,"\\ ");print}')
    

    # troubleshooting echo
    echo " "
    echo "Line: ${line}"
    echo "thePath: ${thePath}"
    echo "appName: ${appName}"
    echo "theComputerName: ${theComputerName}"

    # curl to submit result to google form
    # silent and /dev/nul to suppress results of curl in log
    curl --silent https://docs.google.com/forms/d/$formID/formResponse  -d ifq -d "$field1=${appName}" -d "$field2=${thePath}" -d "$field3=${theComputerName}" -d submit=Submit > /dev/null
done

exit
