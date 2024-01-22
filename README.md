<!-- For developers:
Please use bold font for file names, directories, and file paths.
Please use italic font for variables.
Follow heading styles.
# First-level heading
## Second-level heading
### Third-level heading
See https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax for formatting syntax.
-->

# 4IG_Titin_Molecular_Model
This repository is presented to help in the recreation of simulations of the 4IG titin molecular model simulated in "Microbial production of megadalton titin yields fibers with advantageous mechanical properties" Nature Communications 2021.

The directory **4IG_Titin_Single_Molecule_PDB** contains pdb and psf structures for the 3b43 IG titin domain and a Visual Molecular Dynamics script which can be run to visualize the **3b43_4monomers** structure. See file descriptions for more details.

The directory **Single_Titin_Molecule_Equilibration** contains a sample simulation run using LAMMPS for a single IG titin 4 monomer molecule, which is covalently bonded end to end across periodic boundary conditions to simulate a 1 molecule-wide fibril.

The directory **Fibril_Equilibration_and_Tensile_Test** contains a sample simulation to be run using LAMMPS for the 2 by 2 IG titin fibril molecular model presented in Fig 4b of "Microbial production of megadalton titin yields fibers with advantageous mechanical properties" Nature Communications 2021.

## Software Packages Used:

- LAMMPS: Large-scale Atomic/Molecular Massively Parallel Simulator (LAMMPS) is a molecular dynamics program from Sandia National Laboratories. The LAMMPS software and its installation manual can be found at http://lammps.sandia.gov/. Here we assume software is installed under the Linux environment. We used the LAMMPS, November 17th, 2016 version.

- VMD: Visual Molecular Dynamics is a molecular visualization program for displaying, animating, and analyzing large biomolecular systems using 3-D graphics and built-in scripting. VMD supports computers running MacOS X, Unix, or Windows, is distributed free of charge, and includes source code. https://www.ks.uiuc.edu/Research/vmd/

## File Descriptions in 4IG_Titin_Single_Molecule_PDB

- **3b43.pdb** - Molecule 3B43 of titin IG domains 65-70 downloaded directly from the Protein Data Bank in pdb format.

- **3b43_4monomers.pdb** - Molecule 3B43 of titin IG domain modified to only contain domains 67-70 in pdb format.

- **3b43_4monomers.psf** - Molecule 3B43 of titin IG domain modified to only contain domains 67-70 in protein structure file (psf) format.

- **3b43_PME.vmd** - Visual Molecular Dynamics file to visualize 3b43_4monomers quickly using the command 'source 3b43_PME.vmd'.

## File Descriptions in Single_Titin_Molecule_Equilibration

- **ig_single_molecule.data** - LAMMPS data file containing the structure of **3b43_4monomers** after covalently linking the N-terminal and C-terminal amino acid residues covalently across periodic boundary conditions.

- **Equil_Tensile_Test_Single_Molecule.in** - LAMMPS input file to run an equilibration simulation and tensile test for the 4IG titin single molecule in **ig_single_molecule.data**.

- **submit.sh** - Bash submission file containing the command to run this LAMMPS simulation.

- **tcl_get_trj.tcl** - TCL format script to be running using the 'source' command in VMD to visualize the trajectory output from running the input file **Equil_Tensile_Test_Single_Molecule.in**.

- 
