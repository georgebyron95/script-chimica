#!/usr/bin/env python

import math
import sys
import os
import string

#
#
#   NICOLA DE MITRI
#
#

inpdb_filename="input.pdb" 
outcom_filename="output.com" 

inpdblines = open(inpdb_filename,'r').readlines()
outcom = open(outcom_filename,'w')


topstring4="%mem=50GB\n"
topstring0="%NProc=16\n"
topstring1="#p ONIOM(B3LYP/aug-cc-pVDZ:amber)=embed polar=optrot cphf=rdfreq iop(3/200=" 
topstring5="11,1/200="
topstring3="11)"
topstring2="\n\nOR methylactate in MMPol water from MD \n\n0 1 0 1 0 1/ "
topstring6="*(0,1)\n"
bottomstring0="\nOhno readpar\n\n1 "
bottomstring1=" 3 0 "
bottomstring2="\n\n 73.3300    367.0000 \n  0.0000    392.2000\n  0.0000    392.2000\n\n"
bottomstring3="\n589.3nm 546.1nm 407.8nm\n"


# Pre-conto (brr quanta inutilita'!) del numero di siti per compilazione header 
prefrag = 1
for prelin in inpdblines:
    prewords = prelin.split()
    if len(prewords) > 0:
	if prewords[0] == "ATOM" or prewords[0] == "HETATM":
	    if prewords[2][:2] == "OW":
		prefrag = prefrag+1
outcom.write(topstring4 + topstring0 + topstring1 + str(prefrag)+ topstring5 + str(prefrag) + topstring3 + topstring2 + str(prefrag)+ topstring6) 
# fine preconto

numbersol = 0
frag = 1
level = "H"
for pdblin in inpdblines:
    words = pdblin.split()
    if len(words) > 0:
	if words[0] == "ATOM" or words[0] == "HETATM":
	    if words[2][:2] == "OW":
		level = "L"
		frag = frag + 1
		numbersol = numbersol + 1
	    if words[2][:2] == "CL":
		break
	    outcom.write(words[2][0] + '-' + words[2][:2] + '(Fragment=' + str(frag) +') ')
	    outcom.write("%8.3f" % (float(words[5]) ))
	    outcom.write("%8.3f" % (float(words[6]) ))
	    outcom.write("%8.3f" % (float(words[7]) ))
	    outcom.write(" " + level + "\n")

outcom.write(bottomstring3)
outcom.write(bottomstring0)
outcom.write(str(numbersol))
outcom.write(bottomstring1)
outcom.write(bottomstring2)
outcom.close()

