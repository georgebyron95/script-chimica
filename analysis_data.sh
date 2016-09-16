#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "You need to specify 2 arguments"
    echo "Usage: $0 file_name standard_input"
    echo "file_name : file created by get_data.sh"
    echo "standard_input :  molar mass of the compound in solution"
    exit 1
fi

if ! [[ $2 =~ ^[0-9]+\.?[0-9]+$ ]]; then
    echo "The standard_input must be a number"
    echo "For help type '$0' without arguments"
    exit 1
fi


gawk -v mass="$2" '
BEGIN {
      sum = 0
      }
{
      sum += $1 * $2;
}
END {
    print ARGV[1], (sum / NR / mass)
}' "$1" >> output_file
