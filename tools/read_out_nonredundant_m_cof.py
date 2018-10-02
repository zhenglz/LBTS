#!/usr/bin/env python

###################################
# Compare ligand similarity       #
# Author: Zhang Haiping           #
# Contact: hpzhang@siat.ca.cn     #
###################################

name_list=[]
fw=open("cof_all_n_nonredundant.pro_n","w")
index=0
with open("cof_all.pro","r") as f:
  for  line in f:
     line=line.strip()
     if line.startswith('#MOLECULE compound_')  and line[19:] not in  name_list:
            fws=open(line[19:]+".pdb" ,"w")
            name_list.append(line[19:])
            index=1
    
     if index==1:
          fw.write(line+"\n")
           
     if line.startswith('END') and index==1:
          index=0
          fws.write(line+"\n")



