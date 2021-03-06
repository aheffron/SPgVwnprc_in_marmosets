# Southwest bike trail virus (SOBV) in common marmosets

To accompany the manuscript entitled: "Discovery of a novel simian pegivirus in common marmosets (_Callithrix jacchus_) with lymphocytic enterocolitis"

The repository contains raw data and code (R) or descriptions of the use of software packages to generate each analysis and figure in this paper.

**Figure 1.** A phylogenetic tree of newly discovered pegivirus Southwest bike trail virus (SOBV strains 1 and 2) shows it is most closely related to pegiviruses found in other New World monkeys. We generated maximum likelihood trees using MEGA6.06 (1,000 bootstrap replicates, GTR+I+γ model) from codon-based alignments (via MAFFT); Bootstrap values of less than 70 are omitted.
Abbreviations: HPgV = human pegivirus; SPgV = simian pegivirus 

**Figure 2.** Sliding window similarity plots36 show the relatedness of the amino acid sequences of SOBV-2 and other closely related pegiviruses to SOBV-1. Dashed vertical lines indicate the putative approximate start positions of inferred viral proteins, from left to right: E1, E2, P7, NS2, NS3, NS4A, NS4B, NS5A, and NS5B. 
Abbreviations: SPgV-A nigri = GBV-A-like virus recovered from _Saguinus nigricollis_; SPgV-A tri = GBV-A-like virus recovered from _Aotus trivirgatus_; SPgV-A mx = GBV-A-like virus recovered from Saguinus mystax; SPgV-A lab = GBV-A-like virus recovered from _Saguinus labiatus_; BPgV = bat pegivirus recovered from _Eidolon helvum_

**Figure 3.** Sequence identity matrix based on amino acid alignment of the newly discovered SOBV-1 and SOBV-2 (red box) compared to members of the 11 recognized pegivirus species and of one proposed species. (The classification of dolphin into species “Pegivirus L” has been suggested.) 

**Figure 4.** Prevalence of infection with Southwest bike trail virus (SOBV) in common marmosets at the WNPRC increases with age. One hundred forty-six live, healthy common marmosets in the WNPRC captive common marmoset colony were screened for SOBV using RT-PCR and deep sequencing methods. The likelihood of infection with these viruses was significantly statistically associated with increasing age (_p_=0.03237) using univariate logistic regression.

**Figure 5.** Representative photomicrographs show lymphocytic enteritis distorting normal intestinal structures in the duodenum, jejunum, and colon of common marmosets. Histology performed upon intestinal samples from 85 common marmosets. All intestinal sections were stained with hematoxylin and eosin (H&E). Intestinal sections from animals with enteritis were stained using B cell-specific and T cell-specific staining procedures (immunohistochemistry) with monoclonal antibodies to CD20 or CD79 (B cell markers) and CD3 (T cell marker), respectively.

**Figure 6.** Infection with Southwest bike trail virus (SOBV) is not associated with the likelihood of developing lymphocytic enteritis. Eighty-five common marmosets at the WNPRC, which had been previously screened for SOBV by RT-PCR or deep-sequencing of plasma samples, were examined postmortem for histological evidence of lymphocytic enteritis. Pegivirus infection was not found to be associated with an increased likelihood of developing lymphocytic enteritis in the large intestine (_p_=0.196), small intestines (_p_=0.779), both small and large intestines (_p_=0.0798), or either the large or small intestines (_p_=0.820) using univariate logistic regression.

### Dependencies
All required dependencies will be imported into the R scripts as they run. 

### To create figures 
**Figure 1**: Using MEGA6.06 software, align the sequences for the protein sequences for the accession numbers listed in the csv file _tree_accession_numbers.csv_ (using the default settings) and create a maximum likelihood tree.

**Figure 2**: Use Simplot version 3.5.1 (https://sray.med.som.jhmi.edu/SCRoftware/simplot/) with the sequences for the accession numbers listed in the csv file _simplot_accession_numbers.csv_. Input the protein sequence for SOBV-1 into the "SEQUENCE SEARCH" option at http://pfam.xfam.org/ to determine the putative proteins for SOBV. 

**Figure 3**: Use Geneious 2020.1.2 and the protein sequences for the accession numbers listed in the csv file _similarity_matrix_accession_numbers_ and create a similarity plot.

**Figure 4**: Download the R script _SOBV_sex_age_v1.R_ and input csv files _SOBV_age_sex_forR_v1.csv_ and _SOBV_age_sex_forR_forBarCharts_v1.csv_. Run the R script.

**Figure 6**: Download the R script _SOBV_sex_enterocolitis_v6.R_ and input csv files _Enterocolitis_and_SOBV_data_forR_v3.csv_ and _SOBV_enterocolitis_forR_forBarCharts_v6.csv_. Run the R script. 

## Output
The scripts above generate plots that can be saved in various image file formats.  

Please reach out to Anna Heffron at heffron2@wisc.edu or aheffron@alumni.nd.edu with questions. 
