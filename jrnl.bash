#!/usr/bin/env bash

# Author: Zachary Pigott (github.com/ro-io)
# Disc:
#        1.  Creates a directory if it doesn't exist to store files
#        2.  Creates sub-directories if it doesn't exist based around
#          the current year and month.
#        3.  Creates a text file if it doesn't exist already named after the
#          current date.
#        4.  Populates said text file with a filled out template:
#                               /--------------------------/
#                               |       Month XX, 20XX     |
#                               |                          |
#                               | .......entry starts..... |
#        5.  Opens said text file in a text editor to finish the entry.

#Variables
journal=".journal"

year=$(date +"%Y")
month=$(date +"%m")

entry=$(date +"%Y-%m-%d")
stamp="        $(date +"%A %Y-%m-%d at %r")"

# Check if a journal directory exists, if not create one.
if [ ! -d ~/$journal ]; then
        mkdir ~/$journal
fi

# Check for a current year directory, if not create one.
if [ ! -d ~/$journal/$year ]; then
        mkdir ~/$journal/$year
fi

# Check for a current month directory, if not create one.
if [ ! -d ~/$journal/$year/$month ]; then
        mkdir ~/$journal/$year/$month
fi

# Appends the current date and time to today's entry, or creates said entry.
if [ -e  ~/$journal/$year/$month/$entry.txt ]; then
        echo "" >> ~/$journal/$year/$month/$entry.txt
        echo "" >> ~/$journal/$year/$month/$entry.txt
        echo "$stamp" >> ~/$journal/$year/$month/$entry.txt
else
        echo "$stamp" > ~/$journal/$year/$month/$entry.txt
fi

# Opens the entry so it can be finished by the user.
"${EDITOR:-vim}" ~/$journal/$year/$month/$entry.txt
