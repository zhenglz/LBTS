#! /bin/bash

# check whether ./receptor fold exist
if [ -d receptor ]; then
	cd receptor
else
    echo "No such folder/directory, exit now!"
	exit 0;
fi

# change your pdbTools accordingly
export pdbtool=/data/home/ZHP/software/pdbTools_0.2.1

# loop over all receptor pdb files
for f in *.pdb
do
	a=`python $pdbtool/pdb_centermass.py $f`

	# record the center of mass of each receptor
	echo -e "$a" >> ../receptor_com.txt 
done

exit 1;