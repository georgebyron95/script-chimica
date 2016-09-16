#!/bin/tcsh
# Nicola De Mitri

set j = 0
while ($j <= 2000)
 cp frame$j.pdb input.pdb
 python makeCom.py
 mv output.com frame$j.com
 @ j++
end
echo done
rm input.pdb 

