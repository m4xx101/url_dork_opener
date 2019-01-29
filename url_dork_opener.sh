#!/bin/bash

FILE_PATH=$1
dork_list=(intitle: inurl: intext: define: site: phonebook: maps: book: info: movie: weather: related: link:)
i=0


while IFS= read -r var
do
	
	while [ $i -lt "${#dork_list[@]}" ];
	do

	/usr/bin/firefox --new-tab "${dork_list[$i]}"$var
	
    # Increment the i = i + 1 
    i=`expr $i + 1` 
	done
	
  
done < $FILE_PATH
