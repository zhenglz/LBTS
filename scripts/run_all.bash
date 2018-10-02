# lisica -R reference.mol2 -T target.mol2

lisica -R Acteoside.mol2 -T all_lig_cof_database.mol2  > Acteoside_score_out.txt
lisica -R  EGCG.mol2 -T  all_lig_cof_database.mol2  >  EGCG_score_out.txt
lisica -R  Quercetin.mol2 -T all_lig_cof_database.mol2  >  Quercetin_score_out.txt

python compare.py reverse_docking_acteosideall_energies_spa.sort  Acteoside_score_out.txt > Acteoside_compare.txt

