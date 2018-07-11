#!/bin/bash

# Script to scan for .torrent files and reports the found results to google forms


#google form
#see https://eureka.ykyuen.info/2014/07/30/submit-google-forms-by-curl-command/ to set these values
formID="google_DocumentID"
field1="entry.fieldID"
field2="entry.fieldID2"
field3="entry.fieldID2"

#create a google form
#add two text fields
#disable requiring sign in
#create a result form
#in select A B C columns, create a pivet table
#in pivot table add rows column B, add rows column C
#in pivot table add values column B, add rows column C


# Stop IFS linesplitting on spaces
OIFS=$IFS
IFS=$'\n'

#get computer name
computerName=$(hostname)

#print computer name
echo ""
echo "Computer: ${computerName}"
echo ""

# print notice start spotlight search
echo ""
echo "Searching Started"

# spotlight search as root for .torrent files
paths=($( mdfind -name .torrent ))

# print notice end of spotlight search
echo "Searching Completed"
echo ""

# print start of processing
echo ""
echo "Processing Results Started"


# Process located files
# check for results
if [ ${#paths[@]} != "0" ];
then
	for (( loop=0; loop<${#paths[@]}; loop++ ))
	do
		# set path
		aPath[$loop]=$( ${paths[$loop]} )
		
		#print path
		echo "Path: ${aPath[$loop]}"
		
		# set filename
		fileName[$loop]=$( basename ${paths[$loop]} )
		
		#print fileName
		echo "Path: ${fileName[$loop]}"
	
		
		curl --silent https://docs.google.com/forms/d/$formID/formResponse -d ifq --data-urlencode $field1="${computerName}" --data-urlencode $field2="${fileName[$loop]}" --data-urlencode $field3="${aPath[$loop]}" -d submit=Submit > /dev/null
	
	done
fi

# add line break
echo ""

# print end of processing
echo ""
echo "Processing Results Completed"

# Start IFS linesplitting on spaces
IFS=$OIFS

#exit
exit