# SOBV in marmosets

To accompany the manuscript entitled: "Discovery of a novel simian pegivirus in common marmosets (_Callithrix jacchus_) with lymphocytic enteritis "

The repository contains raw data and code (R) or descriptions of the use of software packages to generate each analysis and figure in this paper.

**Figure 1.** A phylogenetic tree of newly discovered pegivirus Southwest bike trail virus (SOBV strains 1 and 2) shows it is most closely related to pegiviruses found in other New World monkeys. We generated maximum likelihood trees using MEGA6.06 (1,000 bootstrap replicates, GTR+I+γ model) from codon-based alignments (via MAFFT); Bootstrap values of less than 70 are omitted.
Abbreviations: HPgV = human pegivirus; SPgV = simian pegivirus; GBV-C = G.B. virus C; BPgV = bat pegivirus; EqPgV = equine pegivirus; HePegi = hepegivirus; RPgV = rodent pegivirus

**Figure 2.** Sliding window similarity plots36 show the relatedness of the amino acid sequences of SOBV-2 and other closely related pegiviruses to SOBV-1. Dashed vertical lines indicate the putative approximate start positions of inferred viral proteins, from left to right: E1, E2, NS2, NS3, NS4A, NS4B, NS5A, and NS5B.37 
Abbreviations: SPgV-A nigri = GBV-A-like virus recovered from _Saguinus nigricollis_; SPgV-A tri = GBV-A-like virus recovered from _Aotus trivirgatus_; SPgV-A mx = GBV-A-like virus recovered from Saguinus mystax; SPgV-A lab = GBV-A-like virus recovered from _Saguinus labiatus_; BPgV = bat pegivirus recovered from _Eidolon helvum_

**Figure 3.** Sequence identity matrix based on amino acid alignment of the newly discovered SOBV-1 and SOBV-2 (red box) compared to members of the 11 recognized pegivirus species and of one proposed species. (The classification of dolphin into species “Pegivirus L” has been suggested.)

**Figure 4.** Prevalence of infection with Southwest bike trail virus (SOBV) in common marmosets at the WNPRC increases with age. One hundred forty-six live, healthy common marmosets in the WNPRC captive common marmoset colony were screened for SOBV using RT-PCR and deep sequencing methods. The likelihood of infection with these viruses was significantly statistically associated with increasing age (_p_=0.03237) using univariate logistic regression.

**Figure 5.** Representative photomicrographs show lymphocytic enteritis distorting normal intestinal structures in the duodenum, jejunum, and colon of common marmosets. Histology performed upon intestinal samples from 85 common marmosets. All intestinal sections were stained with hematoxylin and eosin (H&E). Intestinal sections from animals with enteritis were stained using B cell-specific and T cell-specific staining procedures (immunohistochemistry) with monoclonal antibodies to CD20 or CD79 (B cell markers) and CD3 (T cell marker), respectively.

**Figure 6.** Infection with Southwest bike trail virus (SOBV) is not associated with the likelihood of developing lymphocytic enteritis. Eighty-five common marmosets at the WNPRC, which had been previously screened for SOBV by RT-PCR or deep-sequencing of plasma samples, were examined postmortem for histological evidence of lymphocytic enteritis. Pegivirus infection was not found to be associated with an increased likelihood of developing lymphocytic enteritis in the large intestine (_p_=0.196), small intestines (_p_=0.779), both small and large intestines (_p_=0.0798), or either the large or small intestines (_p_=0.820) using univariate logistic regression.

### Dependencies
All required dependencies are imported into the R scripts as they run. 

### To run 
**Figures 4 and 6**: Download the R scripts and input files. Run the R scripts. 

## Output
These scripts should generate a PDF and save it to the `figure` directory. Figures 1-X generate PDFs. 

Please reach out to Anna Heffron at aheffron@alumni.nd.edu with questions. 
