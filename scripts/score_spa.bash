#! /bin/bash

if [ -f all_energies_spa.list ]; then
	rm all_energies_spa.list
fi 

# change directory to receptor
if [ -d Docking ]; then
	cd Docking
else
    echo "No such folder/directory, exit now!"
	exit 0;
fi

cd Docking

for d in `/bin/ls`
    do
    val1=`egrep "^   1" $d/log.txt | awk  -v n=$d 'BEGIN {N=n} { print $2}'`
    val2=`tail -2 $d/log.txt | head -n 1 | awk  -v n=$d 'BEGIN {N=n} { print  $2}'`
    val=`bc -l <<<"$val1 - $val2"`
    #aecho "$val1  $val2"
##    awk " {print $val1-$val2}"
    echo "$val"
    echo "$d   $val"
    echo -e "$d   $val   $val1" > $d/$d.energies
    done
cd ..

touch all_energies.list
cd Docking
for d in `/bin/ls`
       do
    head -1 $d/$d.energies >> ../all_energies_spa.list
   done
cd ..

# sort the energies
sort -k3n all_energies_spa.list > all_energies_spa.sort

exit 1;