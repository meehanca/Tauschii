setwd("~/Documents/Tetraploid")

proembryo_1 <- read.delim('pro_embryo_1/abundance.tsv',header=T)
proembryo_2 <- read.delim('pro_embryo_2/abundance.tsv',header=T)

early_endo_1 <- read.delim('early_endosperm_1/abundance.tsv',header=T)
early_endo_2 <- read.delim('early_endosperm_2/abundance.tsv',header=T)

late_endo_1 <- read.delim('late_endosperm_1/abundance.tsv',header=T)
late_endo_2 <- read.delim('late_endosperm_2/abundance.tsv',header=T)

leaf_early_1 <- read.delim('leaf_early_1/abundance.tsv',header=T)
leaf_early_2 <- read.delim('leaf_early_2/abundance.tsv',header=T)

leaf_late_1 <- read.delim('leaf_late_1/abundance.tsv',header=T)
leaf_late_2 <- read.delim('leaf_late_2/abundance.tsv',header=T)

leaf_middle_1 <- read.delim('leaf_middle_1/abundance.tsv',header=T)
leaf_middle_2 <- read.delim('leaf_middle_2/abundance.tsv',header=T)

mature_1 <- read.delim('mature_1/abundance.tsv',header=T)
mature_2 <- read.delim('mature_2/abundance.tsv',header=T)

SC_pericarp_1 <- read.delim('SC_pericarp_1/abundance.tsv',header=T)
SC_pericarp_2 <- read.delim('SC_pericarp_2/abundance.tsv',header=T)

Transition_1 <- read.delim('transition_1/abundance.tsv',header=T)
Transition_2 <- read.delim('transition_2/abundance.tsv',header=T)

Two_cell_1 <- read.delim('two_cell_1/abundance.tsv',header=T)
Two_cell_2 <- read.delim('two_cell_2/abundance.tsv',header=T)

### abundance tpm ### 
Tetraploid_abundance_tpm <- cbind(proembryo_1$tpm,proembryo_2$tpm,early_endo_1$tpm,early_endo_2$tpm,late_endo_1$tpm,late_endo_2$tpm,
                                leaf_early_1$tpm,leaf_early_2$tpm,leaf_late_1$tpm,leaf_late_2$tpm,
                                leaf_middle_1$tpm,leaf_middle_2$tpm,mature_1$tpm,mature_2$tpm,
                                SC_pericarp_1$tpm,SC_pericarp_2$tpm,Transition_1$tpm,
                                Transition_2$tpm,Two_cell_1$tpm,Two_cell_2$tpm)

Tetraploid_abundance_tpm <- as.data.frame(Tetraploid_abundance_tpm)
rownames(Tetraploid_abundance_tpm) <- Two_cell_1$target_id
colnames(Tetraploid_abundance_tpm) <- c('proembryo_1','proembryo_2', 'early_endo_1','early_endo_2','late_endo_1','late_endo_2',
                                      'leaf_early_1','leaf_early_2','leaf_late_1','leaf_late_2',
                                      'leaf_middle_1','leaf_middle_2','mature_1','mature_2',
                                      'SC_pericarp_1','SC_pericarp_2','Transition_1',
                                      'Transition_2','Two_cell_1','Two_cell_2')
Tetraploid_abundance_tpm$target_id <- Two_cell_1$target_id

TdRKD_tpm<-Tetraploid_abundance_tpm[grep("TdRKD",Tetraploid_abundance_tpm$target_id),]
TaRKD_tpm<-Tetraploid_abundance_tpm[grep("TaRKD4",Tetraploid_abundance_tpm$target_id),]
  
TdRKD3_7A_tpm<-Tetraploid_abundance_tpm[grep("TRIDC7AG023400",Tetraploid_abundance_tpm$target_id),]
TdRKD3_7B_tpm<-Tetraploid_abundance_tpm[grep("TRIDC7BG013860",Tetraploid_abundance_tpm$target_id),]

##Combine Splice forms

Target_ID <- TdRKD3_7A_tpm[,21]
TdRKD3_7A_tpm<-TdRKD3_7A_tpm[,c(1:20)]
TdRKD3_7A_tpm <- TdRKD3_7A_tpm[1,] + TdRKD3_7A_tpm[2,] + TdRKD3_7A_tpm[3,] + TdRKD3_7A_tpm[4,] + TdRKD3_7A_tpm[5,]+
  TdRKD3_7A_tpm[6,] + TdRKD3_7A_tpm[7,] + TdRKD3_7A_tpm[8,] + TdRKD3_7A_tpm[9,] + TdRKD3_7A_tpm[10,]
TdRKD3_7A_tpm$target_id <- Target_ID[2]

Target_ID <- TdRKD3_7B_tpm[,21]
TdRKD3_7B_tpm<-TdRKD3_7B_tpm[,c(1:20)]
TdRKD3_7B_tpm <- TdRKD3_7B_tpm[1,] + TdRKD3_7B_tpm[2,] + TdRKD3_7B_tpm[3,] + TdRKD3_7B_tpm[4,]
TdRKD3_7B_tpm$target_id <- Target_ID[2]

TdRKD6a_2A_tpm<-Tetraploid_abundance_tpm[grep("TRIDC2AG058460",Tetraploid_abundance_tpm$target_id),]
TdRKD6a_2B_tpm<-Tetraploid_abundance_tpm[grep("TRIDC2BG061420",Tetraploid_abundance_tpm$target_id),]

##Combine Splice forms

Target_ID <- TdRKD6a_2A_tpm[,21]
TdRKD6a_2A_tpm<-TdRKD6a_2A_tpm[,c(1:20)]
TdRKD6a_2A_tpm <- TdRKD6a_2A_tpm[1,] + TdRKD6a_2A_tpm[2,] + TdRKD6a_2A_tpm[3,] + TdRKD6a_2A_tpm[4,] + TdRKD6a_2A_tpm[5,]+
  TdRKD6a_2A_tpm[6,]
TdRKD6a_2A_tpm$target_id <- Target_ID[2]

Target_ID <- TdRKD6a_2B_tpm[,21]
TdRKD6a_2B_tpm<-TdRKD6a_2B_tpm[,c(1:20)]
TdRKD6a_2B_tpm <- TdRKD6a_2B_tpm[1,] + TdRKD6a_2B_tpm[2,] + TdRKD6a_2B_tpm[3,] + TdRKD6a_2B_tpm[4,] + TdRKD6a_2B_tpm[5,]+
  TdRKD6a_2B_tpm[6,] + TdRKD6a_2B_tpm[7,]
TdRKD6a_2B_tpm$target_id <- Target_ID[2]

TdRKD6b_2A_tpm<-Tetraploid_abundance_tpm[grep("TRIDC2AG058430",Tetraploid_abundance_tpm$target_id),]
TdRKD6b_2B_tpm<-Tetraploid_abundance_tpm[grep("TRIDC2BG061420",Tetraploid_abundance_tpm$target_id),]

##Combine Splice forms

Target_ID <- TdRKD6b_2A_tpm[,21]
TdRKD6b_2A_tpm<-TdRKD6b_2A_tpm[,c(1:20)]
TdRKD6b_2A_tpm <- TdRKD6b_2A_tpm[1,] + TdRKD6b_2A_tpm[2,] + TdRKD6b_2A_tpm[3,] + TdRKD6b_2A_tpm[4,]
TdRKD6b_2A_tpm$target_id <- Target_ID[2]

Target_ID <- TdRKD6b_2B_tpm[,21]
TdRKD6b_2B_tpm<-TdRKD6b_2B_tpm[,c(1:20)]
TdRKD6b_2B_tpm <- TdRKD6b_2B_tpm[1,] + TdRKD6b_2B_tpm[2,] + TdRKD6b_2B_tpm[3,] + TdRKD6b_2B_tpm[4,]+ TdRKD6b_2B_tpm[5,]+
  TdRKD6b_2B_tpm[6,] + TdRKD6b_2B_tpm[7,]
TdRKD6b_2B_tpm$target_id <- Target_ID[2]

TdRKD9_3A_tpm<-Tetraploid_abundance_tpm[grep("TRIDC3AG022940",Tetraploid_abundance_tpm$target_id),]
TdRKD9_3B_tpm<-Tetraploid_abundance_tpm[grep("TRIDC3BG027100",Tetraploid_abundance_tpm$target_id),]

##Combine Splice forms

Target_ID <- TdRKD9_3A_tpm[,21]
TdRKD9_3A_tpm<-TdRKD9_3A_tpm[,c(1:20)]
TdRKD9_3A_tpm <- TdRKD9_3A_tpm[1,] + TdRKD9_3A_tpm[2,] + TdRKD9_3A_tpm[3,] + TdRKD9_3A_tpm[4,]
TdRKD9_3A_tpm$target_id <- Target_ID[2]

Target_ID <- TdRKD9_3B_tpm[,21]
TdRKD9_3B_tpm<-TdRKD9_3B_tpm[,c(1:20)]
TdRKD9_3B_tpm <- TdRKD9_3B_tpm[1,] + TdRKD9_3B_tpm[2,] + TdRKD9_3B_tpm[3,] + TdRKD9_3B_tpm[4,]+ TdRKD9_3B_tpm[5,]+ TdRKD9_3B_tpm[6,]
TdRKD9_3B_tpm$target_id <- Target_ID[2]

TdRKD10_7A_tpm<-Tetraploid_abundance_tpm[grep("TRIDC7AG023400",Tetraploid_abundance_tpm$target_id),]
TdRKD10_7B_tpm<-Tetraploid_abundance_tpm[grep("TRIDC7BG013860",Tetraploid_abundance_tpm$target_id),]

##Combine Splice forms

Target_ID <- TdRKD10_7A_tpm[,21]
TdRKD10_7A_tpm<-TdRKD10_7A_tpm[,c(1:20)]
TdRKD10_7A_tpm <- TdRKD10_7A_tpm[1,] + TdRKD10_7A_tpm[2,] + TdRKD10_7A_tpm[3,] + TdRKD10_7A_tpm[4,] + TdRKD10_7A_tpm[5,]+
  TdRKD10_7A_tpm[6,] + TdRKD10_7A_tpm[7,] + TdRKD10_7A_tpm[8,] + TdRKD10_7A_tpm[9,] + TdRKD10_7A_tpm[10,]
TdRKD10_7A_tpm$target_id <- Target_ID[2]

Target_ID <- TdRKD10_7B_tpm[,21]
TdRKD10_7B_tpm<-TdRKD10_7B_tpm[,c(1:20)]
TdRKD10_7B_tpm <- TdRKD10_7B_tpm[1,] + TdRKD10_7B_tpm[2,] + TdRKD10_7B_tpm[3,] + TdRKD10_7B_tpm[4,] 
TdRKD10_7B_tpm$target_id <- Target_ID[2]

Input <- rbind(TdRKD_tpm,TaRKD_tpm,TdRKD3_7A_tpm,TdRKD3_7B_tpm,TdRKD6a_2A_tpm,TdRKD6b_2B_tpm,TdRKD9_3A_tpm,
               TdRKD9_3B_tpm,TdRKD10_7A_tpm,TdRKD10_7B_tpm)

rownames(Input)<-c("TdRKD1-7A","TdRKD1-7B","TdRKD4-6A","TdRKD4-6B","TdRKD3-7A","TdRKD3-7B",
                   "TdRKD6a-2A","TdRKD6b-2B","TdRKD9-3A","TdRKD9-3B","TdRKD10-7A","TdRKD10-7B")
library(pheatmap)

Input <- Input[,c(1:20)]
Pro_embryo <- cbind(Input$proembryo_1,Input$proembryo_2)
Pro_embryo <- rowMeans(Pro_embryo)

Early_endo <- cbind(Input$early_endo_1,Input$early_endo_2)
Early_endo <- rowMeans(Early_endo)

Late_endo <- cbind(Input$late_endo_1,Input$late_endo_2)
Late_endo <- rowMeans(Late_endo)

Leaf_early <- cbind(Input$leaf_early_1,Input$leaf_early_2)
Leaf_early <- rowMeans(Leaf_early)

Leaf_middle <- cbind(Input$leaf_middle_1,Input$leaf_middle_2)
Leaf_middle <- rowMeans(Leaf_middle)

Leaf_late <- cbind(Input$leaf_late_1,Input$leaf_late_2)
Leaf_late <- rowMeans(Leaf_late)

Mature <- cbind(Input$mature_1,Input$mature_2)
Mature <- rowMeans(Mature)

SC_pericarp <- cbind(Input$SC_pericarp_1,Input$SC_pericarp_2)
SC_pericarp <- rowMeans(SC_pericarp)

Transition <- cbind(Input$Transition_1,Input$Transition_2)
Transition <- rowMeans(Transition)

Two_cell <- cbind(Input$Two_cell_1, Input$Two_cell_2)
Two_cell <- rowMeans(Two_cell)

Input <- cbind(Pro_embryo,Early_endo,Late_endo,Leaf_early,Leaf_middle,Leaf_late,Mature,SC_pericarp,Transition,Two_cell)

colnames(Input) <- c("Pro_embryo","Early_endo","Late_endo","Leaf_early","Leaf_middle","Leaf_late","Mature","SC_pericarp","Transition","Two_cell")
rownames(Input)<-c("TdRKD1-7A","TdRKD1-7B","TdRKD4-6A","TdRKD4-6B","TdRKD3-7A","TdRKD3-7B",
                   "TdRKD6a-2A","TdRKD6b-2B","TdRKD9-3A","TdRKD9-3B","TdRKD10-7A","TdRKD10-7B")


Input <- Input[apply(Input, MARGIN = 1, FUN = function(x) sd(x) != 0 ),]
library(RColorBrewer)
col.pal <- RColorBrewer::brewer.pal(9, "Blues")
pheatmap(log(Input+1), scale = "none",border_color=NA,show_rownames = T, main = 'Tetraploid timecourse',color=col.pal)


### TaRKD1-7D tpm ### 
TdRKD1_7A_tpm <- as.data.frame(Tetraploid_abundance_tpm[nrow(Tetraploid_abundance_tpm),])
rownames(TdRKD1_7A_tpm) <- colnames(Tetraploid_abundance_tpm)

TdRKD1_7A_tpm[,2] <- c('proembryo','proembryo','early_endo','early_endo','late_endo','late_endo',
                       'leaf_early','leaf_early','leaf_late','leaf_late',
                       'leaf_middle','leaf_middle','mature','mature',
                       'SC_pericarp','SC_pericarp','Transition',
                       'Transition','Two_cell','Two_cell')

colnames(TdRKD1_7A_tpm) <- c("TPM","Sample")



library(ggplot2)
library(RColorBrewer)
nb.cols <- 10
mycolors <- colorRampPalette(brewer.pal(10, "Set2"))(nb.cols)

ggplot(TdRKD1_7A_tpm,aes(Sample,TPM,fill=forcats::fct_rev(Sample))) + 
  stat_boxplot()+ geom_point() +
  scale_fill_manual(values = mycolors) 

