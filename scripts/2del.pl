chdir("/data/home/ZHP/Reverse_dock/reverse_docking1/receptor");
@a=glob("*.pdb");
for($i=100;$i<300;$i++){
print $i."\n";
print @a[$i]."\n";

system("rm -rf @a[$i]");

} 