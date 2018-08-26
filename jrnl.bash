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
#                               | date: Month XX, 20XX     |
#                               | time: day/night          |
#                               |                          |
#                               | .......entry starts..... |
#        5.  Opens said text file in a text editor to finish the entry.
#        6.  Maybe fucks with a vcs?  Or sets up a cron job idk.
