#!/usr/bin/env python

###################################
# Compare ligand similarity       #
# Author: Zhang Haiping           #
# Contact: hpzhang@siat.ca.cn     #
###################################

import sys
from pandas import DataFrame 
import pandas as pd
from sys import argv

num_top_keep=300

#f = open("idmapping_selected.tab", 'r')
df = pd.read_csv('idmapping_selected.tab',sep = '\t',header=0)

df_nn=df.iloc[:,[0,1,5]]
df_nn.to_csv("uniprot_pdb_out.csv",index=False,sep=',', float_format='%s')

