import math
import sys
import os
import string
import re

#
# Opened by get_data.sh
#
# Determination of OR value at different frequencies in a single frame
#

# Name of file without the value

error_filename = 'list_of_frames_with_errors.txt'

# Check the number of arguments

if len(sys.argv) != 2:
    print "Numero di argomenti passati errato"
    print "Utilizzo: python " + sys.argv[0] + " nome_file_da_analizzare"
    sys.exit(1)

# Opening the file

input_filename = sys.argv[1]
with open(input_filename, 'r') as content_file:
    content = content_file.read()
    # Finding the strings
    result_iter = re.finditer(" Molar Mass =\s*(?P<mass>[0-9\.]+)\s*grams/mole, \[Alpha\] \( (?P<freq>[0-9\.]+) A\) =\s*(?P<degree>[-+]?[0-9\.]+) deg\.", content)
    
    # Checking that is not null
    # If not, it's opened in append mode a file. The name of file is the frequence of the OR value.
    # On the file, it's written the OR value followed by the molar mass of the whole system

    count = 0
    for m in result_iter:
        count += 1
        with open(m.group('freq') + ".txt", 'a') as output_file:
            output_file.write(m.group('degree') + " " + m.group('mass') + "\n")
    
    if count == 0:
        # Should be interesting printing the name of files (opened by get_data.sh) that does not give a value of OR
        #print "[Error] " + input_filename
        with open(error_filename, 'a') as error_file:
            error_file.write(input_filename + "\n")
