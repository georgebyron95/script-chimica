#!/bin/bash

#
# Move frames in directories 
# In each directory is created a file containing:
# - header.csh (a standard input that should be already present in the folder in which you launch this script)
# - a string for every file in the directory ( $GauCmd  frame3.com frame3.log, with $GauCmd declared in the header)
# - a few strings at the end of file, containing rsync and the elimination of a temporary folder created by the header
# This file is the one that you will launch from every folder for do calculations on the frames
#


# Path of this script and name of the header that will be included in do_stuff.csh (name of the script of every folder)

path=$(pwd)
header="header.csh"

#
# Names of directories created
#

numdirs=$2
folder_name="OPT-ROT"
identifier="cartella"

#
# Name of files:  file_name<number>.file_extension, with <number> from 0 to something
#

file_name="frame"
file_extension="com"


# Check of the arguments (number and types)

# Number of arguments (2)

if  [ "$#" -ne 2 ]; then
    echo "You need to specify 2 arguments"
    echo "Usage: $0 source_directory_name num_directories"
    echo "source_directory_name : folder containing the files .com"
    echo "num_directories : number of folders you'd like to create"
    exit 1
fi

# Type of the second argument (number of folders created)

if ! [ $2 -eq $2 2>/dev/null ]; then
    echo "The num_directories argument must be a number"
    echo "For help type '$0' without arguments"
    exit 1
fi

# Check if the folder you'd like to create already exists

if [ -e $folder_name ]; then
    echo "The folder $folder_name already exists. Exiting..."
    exit 1
fi

# Check if the first argument is a directory and running

if [ -d "$1" ]; then

    numfiles=$( ls -1 $1/$file_name*.$file_extension | wc -l )
    file_tofolder=$( bc <<< "scale=10; $numfiles / $numdirs" )
    
    # Creations of the folders (enumerated)
    # In each folder is created a file containing the $header and a few strings
    # These command strings
    # 1) enter in the folder created (the one which you pass as argument, $folder_name)
    # 2) delete a temporary folder (it should be present)
    # 3) copy the files in the $j directory in a temporary folder
    # 4) enter in the temporary folder

    mkdir $folder_name

    echo $task_path
    for ((j=1; j<=$numdirs; j++)); do
        
        task_path="$folder_name/$j$identifier/do_stuff.csh"
        mkdir $folder_name/$j$identifier
        cp $header $task_path
        echo "cd $path/$folder_name/" >> $task_path
        echo "rm -rf /local/scratch/smart01/$j$identifier" >> $task_path
        echo "cp -r $j$identifier/ /local/scratch/smart01" >> $task_path
        echo "cd /local/scratch/smart01/$j$identifier" >> $task_path
        echo "" >> $task_path
    done
    
    # Copying the files in the right folder
    # The command line of do_stuff.csh is added for every file in the proper do_stuff.csh

    for ((i=0; i<$numfiles; i++)); do
        destination_folder=$( bc <<< "$i / $file_tofolder + 1" )
        cp $1/$file_name$i.$file_extension $folder_name/$destination_folder$identifier/$file_name$i.$file_extension
                
        echo " \$GauCmd $file_name$i.$file_extension $file_name$i.log" >> $folder_name/$destination_folder$identifier/do_stuff.csh
    done

    # This last cycle adds the last lines to each do_stuff.csh

    for ((j=1; j<=$numdirs; j++)); do
        task_path="$folder_name/$j$identifier/do_stuff.csh"
        echo "" >> $task_path
        echo "cd .." >> $task_path
        echo "" >> $task_path
        echo "rsync -avz $j$identifier/ $path/$folder_name/$j$identifier" >> $task_path
        echo "rm -r $j$identifier/" >> $task_path
        echo "" >> $task_path
        echo "exit" >> $task_path
    done

else 
    echo "The source_directory_name is not a directory"
    echo "For help type '$0' without arguments"

fi


