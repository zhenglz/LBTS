# LBTS
<h2>Ligand based target searching</h2>

This project is a part of the "Large-Scale Target Identification with Reverse Docking" project. 

<h2>Author: Haiping Zhang</h2>
<h2>Contact: hpzhang@siat.ac.cn</h2>

<p>
We employed a novel computational pipeline for assisting protein target discovery. 
The pipeline allows de novo identification of protein targets for herbal ingredients 
by simulating ligand-protein interactions against the user-designated protein-ligand collection, 
in an efficient and high throughput manner. </p>
<p>
We evaluated the pipeline using three Traditional Chinese Medicine (TCM) ingredients 
such as acteoside, quercetin and epigallocatechin gallate (EGCG) respectively. 
Majority of the known targets of these ingredients were successfully identified by 
the pipeline. Structural comparative analyses confirmed many predicted ligand-target 
interactions use same binding pockets and the same binding modes as those of known 
ligand-target interactions. Furthermore, we illustrated the mechanism of actions 
(MOAs) of the TCM ingredients by network analysis based on the predicted target profiles. 
Through the paper, we insist that the novel computational pipeline provides an 
alternate option to explore the MOA of herb medicine within a reasonable computational time. 
It is also particularly valuable in aiding precise drug discovery and drug repurposing 
via an economical and efficient route. 
</p>

<h2>Please cite: </h2>
Haiping Zhang et al. Large-Scale Target Identification of Herbal Medicine Using a Reverse Docking Approach. JCIM. 2018
			 
<h2>How to use:</h2>
** 1. Define the center of mass of a receptor protein
** 2. Process the receptor and ligand molecules for Vina. 
** 3. Pass the center of mass of a receptor and the input pdbqt files (of receptor and ligand) to vina
** 4. Rescore and sort the results

## Examples:
You could download the 3 examples to run in your local evironment.
