# LBTS: Ligand based target searching

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
<p>Haiping Zhang et al. Large-Scale Target Identification of Herbal Medicine Using a Reverse Docking Approach. 2018. </p>
<p>Lesnik, S.; Stular, T.; Brus, B.; Knez, D.; Gobec, S.; Janezic, D.; Konc, J., LiSiCA: A Software for Ligand-Based 
Virtual Screening and Its Application for the Discovery of Butyrylcholinesterase Inhibitors. 
Journal of chemical information and modeling 2015, 55, 1521-8.</p>
			 
<h2>How to use:</h2>
<p> 1. Define the center of mass of a receptor protein </p>
<p> 2. Process the receptor and ligand molecules for Vina. </p>
<p> 3. Pass the center of mass of a receptor and the input pdbqt files (of receptor and ligand) to vina </p>
<p> 4. Rescore and sort the results </p>

## Dependencies:
#### 1. MGLTools
#### 2. AutoDock Vina
#### 3. pdbTools
#### 4. lisca

## Examples:
You could download the 3 examples to run in your local evironment. Extract the zip files in your working
directory. Read the README.txt file in each example, run the tutorial according to the README.txt. 
If you encounter any errors or questions, please raise an issue.

