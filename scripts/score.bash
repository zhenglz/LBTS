#! /bin/bash

# change directory to receptor
if [ -d Docking ]; then
	cd Docking
else
    echo "No such folder/directory, exit now!"
	exit 0;
fi

# extract all energies
for d in `/bin/ls`
do
    egrep "^   1" $d/log.txt | awk  -v n=$d 'BEGIN {N=n} { print N"  "$2" "}' > $d/$d.energies
done

cd ..

# record all energies of each ligand-receptor pairs
touch all_energies.list
cd Docking
for d in `/bin/ls`
       do
    head -1 $d/$d.energies >> ../all_energies.list
   done
cd ..

# sort the energies
sort -k2n all_energies.list > all_energies.sort

exit 1;