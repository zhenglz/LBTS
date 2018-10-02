#! /bin/bash

cd $PWD

# define MGLTools path
export ADTPY=/data/program/autodock/mgltools_x86_64Linux2_1.5.6/MGLToolsPckgs/AutoDockTools/Utilities24
export MGLTools=/data/program/autodock/mgltools_x86_64Linux2_1.5.6/bin

# change directory to receptor
if [ -d receptor ]; then
	cd receptor
else
    echo "No such folder/directory, exit now!"
	exit 0;
fi

# prepare each receptor pdb files
for f in *.pdb
do
	$MGLTools/pythonsh $ADTPY/prepare_receptor4.py -r $f -o "$f"qt 
done

cd ..

# prepare the ligand pdb fle
$MGLTools/pythonsh $ADTPY/prepare_ligand4.py -l ligand.pdb

exit 1;



