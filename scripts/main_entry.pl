# call script 1.bash to define receptor pocket center
system("bash COM.bash");

# read pocket center information
open(FN, "<receptor_com.txt");
@a=<FN>;
chomp(@a);

# prepare the receptor and ligand pdb files for vina docking
system("bash prepare_pdbqt.bash");

# if the result fold exists, delete it
system("rm -rf Docking");
system("mkdir Docking");


foreach $s (@a){
@vv=split(/ +/, $s);
#print $s;
#print @vv[0]."\n";
#print @vv[1]."\n";
print @vv[2]."\n";
#print @vv[3];

$xxx=@vv[0];
$name=@vv[0]."qt";
$xxx=~s/\.pdb//;

system("mkdir Docking/$xxx");

# call vina, change the path to vina accordingly
system("/data/home/ZHP/autodock_vina/autodock_vina_1_1_2_linux_x86/bin/vina --config conf.txt --receptor receptor/$name --center_x @vv[1] --center_y @vv[2] --center_z @vv[3] --out Docking/$xxx/out.pdbqt --log Docking/$xxx/log.txt")

}
system("bash scoring.bash");
close(FN);