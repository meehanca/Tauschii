setwd("~/Documents/Wheat/Hexaploid")

AM_1 <- read.delim('AM_1/abundance.tsv',header=T)
AM_2 <- read.delim('AM_1/abundance.tsv',header=T)

proembryo_1 <- read.delim('pro_embryo_1/abundance.tsv',header=T)
proembryo_2 <- read.delim('pro_embryo_2/abundance.tsv',header=T)
proembryo_3 <- read.delim('pro_embryo_3/abundance.tsv',header=T)
proembryo_4 <- read.delim('pro_embryo_4/abundance.tsv',header=T)

early_endo_1 <- read.delim('early_endosperm_1/abundance.tsv',header=T)
early_endo_2 <- read.delim('early_endosperm_2/abundance.tsv',header=T)

late_endo_1 <- read.delim('late_endosperm_1/abundance.tsv',header=T)
late_endo_2 <- read.delim('late_endosperm_2/abundance.tsv',header=T)

leaf_early_1 <- read.delim('leaf_early_1/abundance.tsv',header=T)
leaf_early_2 <- read.delim('leaf_early_2/abundance.tsv',header=T)
leaf_early_3 <- read.delim('leaf_early_3/abundance.tsv',header=T)

leaf_late_1 <- read.delim('leaf_late_1/abundance.tsv',header=T)
leaf_late_2 <- read.delim('leaf_late_2/abundance.tsv',header=T)
leaf_late_3 <- read.delim('leaf_late_3/abundance.tsv',header=T)
leaf_late_4 <- read.delim('leaf_late_4/abundance.tsv',header=T)

leaf_middle_1 <- read.delim('leaf_middle_1/abundance.tsv',header=T)
leaf_middle_2 <- read.delim('leaf_middle_2/abundance.tsv',header=T)
leaf_middle_3 <- read.delim('leaf_middle_3/abundance.tsv',header=T)
leaf_middle_4 <- read.delim('leaf_middle_4/abundance.tsv',header=T)

mature_1 <- read.delim('mature_1/abundance.tsv',header=T)
mature_2 <- read.delim('mature_2/abundance.tsv',header=T)

SC_pericarp_1 <- read.delim('SC_pericarp_1/abundance.tsv',header=T)
SC_pericarp_2 <- read.delim('SC_pericarp_2/abundance.tsv',header=T)

Transition_1 <- read.delim('transition_1/abundance.tsv',header=T)
Transition_2 <- read.delim('transition_2/abundance.tsv',header=T)
Transition_3 <- read.delim('transition_3/abundance.tsv',header=T)


Two_cell_1 <- read.delim('two_cell_1/abundance.tsv',header=T)
Two_cell_2 <- read.delim('two_cell_2/abundance.tsv',header=T)
Two_cell_3 <- read.delim('two_cell_3/abundance.tsv',header=T)
Two_cell_4 <- read.delim('two_cell_4/abundance.tsv',header=T)

### abundance tpm ### 
Hexaploid_abundance_tpm <- cbind(proembryo_1$tpm,proembryo_2$tpm,proembryo_3$tpm,proembryo_4$tpm,early_endo_1$tpm,early_endo_2$tpm,late_endo_1$tpm,late_endo_2$tpm,
                                  leaf_early_1$tpm,leaf_early_2$tpm,leaf_early_3$tpm,leaf_late_1$tpm,leaf_late_2$tpm,leaf_late_3$tpm,leaf_late_4$tpm,
                                  leaf_middle_1$tpm,leaf_middle_2$tpm,leaf_middle_3$tpm,leaf_middle_4$tpm,mature_1$tpm,mature_2$tpm,
                                  SC_pericarp_1$tpm,SC_pericarp_2$tpm,Transition_1$tpm,Transition_2$tpm,Transition_3$tpm,
                                  Two_cell_1$tpm,Two_cell_2$tpm,Two_cell_3$tpm,Two_cell_4$tpm,Hex_axillary_rotos,Hex_RAM,Hex_SAM_seedling,Hex_SAM_tillering,Hex_Spike,Hex_roots)

Hexaploid_abundance_tpm <- as.data.frame(Hexaploid_abundance_tpm)
rownames(Hexaploid_abundance_tpm) <- Two_cell_1$target_id
colnames(Hexaploid_abundance_tpm) <- c('proembryo_1','proembryo_2','proembryo_3','proembryo_4','early_endo_1','early_endo_2','late_endo_1','late_endo_2',
                                        'leaf_early_1','leaf_early_2','leaf_early_3','leaf_late_1','leaf_late_2','leaf_late_3','leaf_late_4',
                                        'leaf_middle_1','leaf_middle_2','leaf_middle_3','leaf_middle_4','mature_1','mature_2',
                                        'SC_pericarp_1','SC_pericarp_2','Transition_1','Transition_2','Transition_3','Two_cell_1','Two_cell_2',
                                        'Two_cell_3','Two_cell_4',"Axillary root meristem","Root apical meristem","Shoot apical meristem - seedling","Shoot apical meristem - tillering","Spike","Hex_roots")
Hexaploid_abundance_tpm$target_id <- Two_cell_1$target_id

TaRKD_tpm<-Hexaploid_abundance_tpm[grep("TaRKD",Hexaploid_abundance_tpm$target_id),]
TaRKD_tpm<-TaRKD_tpm[2:3,]
TaRKD1_7A_tpm<-Hexaploid_abundance_tpm[grep("TraesCS7A02G135900",Hexaploid_abundance_tpm$target_id),]

TaRKD3_7A_tpm<-Hexaploid_abundance_tpm[grep("TraesCS7A02G188500",Hexaploid_abundance_tpm$target_id),]
TaRKD3_7B_tpm<-Hexaploid_abundance_tpm[grep("TraesCS7B02G093300",Hexaploid_abundance_tpm$target_id),]
TaRKD3_7D_tpm<-Hexaploid_abundance_tpm[grep("TraesCS7D02G189600",Hexaploid_abundance_tpm$target_id),]

TaRKD4_7A_tpm<-Hexaploid_abundance_tpm[grep("TraesCS6A02G307500",Hexaploid_abundance_tpm$target_id),]
TaRKD4_7B_tpm<-Hexaploid_abundance_tpm[grep("TraesCS6B02G336100",Hexaploid_abundance_tpm$target_id),]
TaRKD4_7D_tpm<-Hexaploid_abundance_tpm[grep("TraesCS6D02G286800",Hexaploid_abundance_tpm$target_id),]

TaRKD6a_2A_tpm<-Hexaploid_abundance_tpm[grep("TraesCS2A02G404500",Hexaploid_abundance_tpm$target_id),]
TaRKD6a_2B_tpm<-Hexaploid_abundance_tpm[grep("TraesCS2B02G422400",Hexaploid_abundance_tpm$target_id),]
TaRKD6a_2D_tpm<-Hexaploid_abundance_tpm[grep("TraesCS2D02G401400",Hexaploid_abundance_tpm$target_id),]

Target_ID <- TaRKD6a_2D_tpm[,37]
TaRKD6a_2D_tpm<-TaRKD6a_2D_tpm[,c(1:36)]
TaRKD6a_2D_tpm <- TaRKD6a_2D_tpm[1,] + TaRKD6a_2D_tpm[2,] + TaRKD6a_2D_tpm[3,]
TaRKD6a_2D_tpm$target_id <- Target_ID[2]

TaRKD6b_2A_tpm<-Hexaploid_abundance_tpm[grep("TraesCS2A02G404400",Hexaploid_abundance_tpm$target_id),]
TaRKD6b_2B_tpm<-Hexaploid_abundance_tpm[grep("TraesCS2B02G422300",Hexaploid_abundance_tpm$target_id),]
TaRKD6b_2D_tpm<-Hexaploid_abundance_tpm[grep("TraesCS2D02G401300",Hexaploid_abundance_tpm$target_id),]

TaRKD9_3A_tpm<-Hexaploid_abundance_tpm[grep("TraesCS3A02G167700",Hexaploid_abundance_tpm$target_id),]
TaRKD9_3B_tpm<-Hexaploid_abundance_tpm[grep("TraesCS3B02G198700",Hexaploid_abundance_tpm$target_id),]
TaRKD9_3D_tpm<-Hexaploid_abundance_tpm[grep("TraesCS3D02G173800",Hexaploid_abundance_tpm$target_id),]

TaRKD10_7A_tpm<-Hexaploid_abundance_tpm[grep("TraesCS7A02G188400",Hexaploid_abundance_tpm$target_id),]
TaRKD10_7D_tpm<-Hexaploid_abundance_tpm[grep("TraesCS7D02G189500",Hexaploid_abundance_tpm$target_id),]

TaRKD11_7A_tpm<-Hexaploid_abundance_tpm[grep("TraesCS7A02G497400",Hexaploid_abundance_tpm$target_id),]


Input <- rbind(TaRKD_tpm,TaRKD1_7A_tpm,TaRKD3_7A_tpm,TaRKD3_7B_tpm,TaRKD3_7D_tpm,TaRKD4_7A_tpm,TaRKD4_7B_tpm,TaRKD4_7D_tpm,
               TaRKD6a_2A_tpm,TaRKD6a_2B_tpm,TaRKD6a_2D_tpm,TaRKD6b_2A_tpm,TaRKD6b_2B_tpm,TaRKD6b_2D_tpm,TaRKD9_3A_tpm,
               TaRKD9_3B_tpm,TaRKD9_3D_tpm,TaRKD10_7A_tpm,TaRKD10_7D_tpm)

rownames(Input) <- c("TaRKD1-7B","TaRKD1-7D","TaRKD1_7A","TaRKD3-7A","TaRKD3-7B","TaRKD3-7D",
                     "TaRKD4-6A","TaRKD4-6B","TaRKD4-6D","TaRKD6a-2A","TaRKD6a-2B","TaRKD6a-2D",
                     "TaRKD6b-2A","TaRKD6b-2B","TaRKD6b-2D","TaRKD9-3A","TaRKD9-3B","TaRKD9-3D",
                     "TaRKD10-7A","TaRKD10-7D")

colnames(Hexaploid_abundance_tpm) <- c('proembryo_1','proembryo_2','proembryo_3','proembryo_4','early_endo_1','early_endo_2','late_endo_1','late_endo_2',
                                       'leaf_early_1','leaf_early_2','leaf_early_3','leaf_late_1','leaf_late_2','leaf_late_3','leaf_late_4',
                                       'leaf_middle_1','leaf_middle_2','leaf_middle_3','leaf_middle_4','mature_1','mature_2',
                                       'SC_pericarp_1','SC_pericarp_2','Transition_1','Transition_2','Transition_3','Two_cell_1','Two_cell_2',
                                       'Two_cell_3','Two_cell_4',"Axillary root meristem","Root apical meristem","Shoot apical meristem - seedling","Shoot apical meristem - tillering","Spike","Hex_roots")

Pro_embryo <- cbind(Input$proembryo_1,Input$proembryo_2,Input$proembryo_3,Input$proembryo_4)
Pro_embryo <- rowMeans(Pro_embryo)

Early_endo <- cbind(Input$early_endo_1,Input$early_endo_2)
Early_endo <- rowMeans(Early_endo)

Late_endo <- cbind(Input$late_endo_1,Input$late_endo_2)
Late_endo <- rowMeans(Late_endo)

Leaf_early <- cbind(Input$leaf_early_1,Input$leaf_early_2,Input$leaf_early_3)
Leaf_early <- rowMeans(Leaf_early)

Leaf_middle <- cbind(Input$leaf_middle_1,Input$leaf_middle_2,Input$leaf_middle_3,Input$leaf_middle_4)
Leaf_middle <- rowMeans(Leaf_middle)

Leaf_late <- cbind(Input$leaf_late_1,Input$leaf_late_2,Input$leaf_late_3,Input$leaf_late_4)
Leaf_late <- rowMeans(Leaf_late)

Mature <- cbind(Input$mature_1,Input$mature_2)
Mature <- rowMeans(Mature)

SC_pericarp <- cbind(Input$SC_pericarp_1,Input$SC_pericarp_2)
SC_pericarp <- rowMeans(SC_pericarp)

Transition <- cbind(Input$Transition_1,Input$Transition_2,Input$Transition_3)
Transition <- rowMeans(Transition)

Two_cell <- cbind(Input$Two_cell_1, Input$Two_cell_2, Input$Two_cell_3, Input$Two_cell_4)
Two_cell <- rowMeans(Two_cell)

Input <- cbind(Pro_embryo,Early_endo,Late_endo,Leaf_early,Leaf_middle,Leaf_late,Mature,Input$Hex_roots,SC_pericarp,Transition,Two_cell,Input$`Axillary root meristem`,Input$`Root apical meristem`,Input$`Shoot apical meristem - seedling`,Input$`Shoot apical meristem - tillering`,Input$Spike)

colnames(Input) <- c("Pro_embryo","Early_endo","Late_endo","Leaf_early","Leaf_middle","Leaf_late","Mature","Roots","SC_pericarp","Transition","Two_cell","Axillary root meristem","Root apical meristem","Shoot apical meristem - seedling","Shoot apical meristem - tillering","Spike")
rownames(Input) <- c("TaRKD1-7B","TaRKD1-7D","TaRKD1_7A","TaRKD3-7A","TaRKD3-7B","TaRKD3-7D",
                     "TaRKD4-6A","TaRKD4-6B","TaRKD4-6D","TaRKD6a-2A","TaRKD6a-2B","TaRKD6a-2D",
                     "TaRKD6b-2A","TaRKD6b-2B","TaRKD6b-2D","TaRKD9-3A","TaRKD9-3B","TaRKD9-3D",
                     "TaRKD10-7A","TaRKD10-7D")

library(RColorBrewer)

library(pheatmap)
col.pal <- RColorBrewer::brewer.pal(9, "Blues")
pheatmap(log(Input+1), scale = "none",border_color=NA,show_rownames = T,cluster_cols = F, main = 'Hexaploid timecourse',color=col.pal)


### TaRKD1-7D tpm ### 
TaRKD1_7A_tpm <- as.data.frame(Hexaploid_abundance_tpm[nrow(Hexaploid_abundance_tpm),])
rownames(TaRKD1_7A_tpm) <- colnames(Hexaploid_abundance_tpm)

TaRKD1_7A_tpm[,2] <- c('proembryo','proembryo','early_endo','early_endo','late_endo','late_endo',
                       'leaf_early','leaf_early','leaf_late','leaf_late',
                       'leaf_middle','leaf_middle','mature','mature',
                       'SC_pericarp','SC_pericarp','Transition',
                       'Transition','Two_cell','Two_cell')

colnames(TaRKD1_7A_tpm) <- c("TPM","Sample")



library(ggplot2)
library(RColorBrewer)
nb.cols <- 10
mycolors <- colorRampPalette(brewer.pal(10, "Set2"))(nb.cols)

ggplot(TaRKD1_7A_tpm,aes(Sample,TPM,fill=forcats::fct_rev(Sample))) + 
  stat_boxplot()+ geom_point() +
  scale_fill_manual(values = mycolors) 

