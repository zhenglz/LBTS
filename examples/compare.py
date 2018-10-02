#!/usr/bin/env python

###################################
# Compare ligand similarity       #
# Author: Zhang Haiping           #
# Contact: hpzhang@siat.ca.cn     #
###################################

import os
import shutil


if (len(os.sys.argv)<2):
    print "usage: python compare.py file1 file2"
    print("exit now")
    os.exit(0)

# load file
nf=open(os.sys.argv[1], 'r')
newlines=nf.readlines()

# load 2nd file
f=open(os.sys.argv[2], 'r')

lines=f.readlines()
for newname in newlines:
    for name in lines:
        arrtem=name.split()
        if newname[0:4].upper() == arrtem[1][0:4].upper():
        print newname.strip() + "  " + name.strip()  

 



