setwd("~/Documents/Tauscii/Timecourse")

early_endo_1 <- read.delim('early_endo_1/abundance.tsv',header=T)
early_endo_2 <- read.delim('early_endo_2/abundance.tsv',header=T)

grain_10d_1 <- read.delim('grain_10d_1/abundance.tsv',header=T)
grain_10d_2 <- read.delim('grain_10d_2/abundance.tsv',header=T)
grain_10d_3 <- read.delim('grain_10d_3/abundance.tsv',header=T)

grain_27d_1 <- read.delim('grain_27d_1/abundance.tsv',header=T)
grain_27d_2 <- read.delim('grain_27d_2/abundance.tsv',header=T)
grain_27d_3 <- read.delim('grain_27d_3/abundance.tsv',header=T)

late_endo_1 <- read.delim('late_endo_1/abundance.tsv',header=T)
late_endo_2 <- read.delim('late_endo_2/abundance.tsv',header=T)

leaf_early_1 <- read.delim('leaf_early_1/abundance.tsv',header=T)
leaf_early_2 <- read.delim('leaf_early_2/abundance.tsv',header=T)

leaf_late_1 <- read.delim('leaf_late_1/abundance.tsv',header=T)
leaf_late_2 <- read.delim('leaf_late_2/abundance.tsv',header=T)

leaf_middle_1 <- read.delim('leaf_middle_1/abundance.tsv',header=T)
leaf_middle_2 <- read.delim('leaf_middle_2/abundance.tsv',header=T)

mature_1 <- read.delim('mature_1/abundance.tsv',header=T)
mature_2 <- read.delim('mature_2/abundance.tsv',header=T)

root_1 <- read.delim('root_1/abundance.tsv',header=T)
root_2 <- read.delim('root_2/abundance.tsv',header=T)
root_3 <- read.delim('root_3/abundance.tsv',header=T)

SC_pericarp_1 <- read.delim('SC_pericarp_1/abundance.tsv',header=T)
SC_pericarp_2 <- read.delim('SC_pericarp_2/abundance.tsv',header=T)
SC_pericarp_3 <- read.delim('SC_pericarp_3/abundance.tsv',header=T)

seedling_1 <- read.delim('seedling_1/abundance.tsv',header=T)
seedling_2 <- read.delim('seedling_2/abundance.tsv',header=T)
seedling_3 <- read.delim('seedling_3/abundance.tsv',header=T)

Transition_1 <- read.delim('Transition_1/abundance.tsv',header=T)
Transition_2 <- read.delim('Transition_2/abundance.tsv',header=T)

Two_cell_1 <- read.delim('Two_cell_1/abundance.tsv',header=T)
Two_cell_2 <- read.delim('Two_cell_2/abundance.tsv',header=T)
Two_cell_3 <- read.delim('Two_cell_3/abundance.tsv',header=T)

### abundance tpm ### 
Tauschii_abundance_tpm <- cbind(early_endo_1$tpm,early_endo_2$tpm,grain_10d_1$tpm,grain_10d_2$tpm,
                                grain_10d_3$tpm,grain_27d_1$tpm,grain_27d_2$tpm,grain_27d_3$tpm,late_endo_1$tpm,early_endo_2$tpm,
                                leaf_early_1$tpm,leaf_early_2$tpm,leaf_late_1$tpm,leaf_late_2$tpm,root_1$tpm,root_2$tpm,root_3$tpm,
                                leaf_middle_1$tpm,leaf_middle_2$tpm,mature_1$tpm,mature_2$tpm,
                                SC_pericarp_1$tpm,SC_pericarp_2$tpm,SC_pericarp_3$tpm,seedling_1$tpm,seedling_2$tpm,
                                seedling_3$tpm,Transition_1$tpm,Transition_2$tpm,Two_cell_1$tpm,Two_cell_2$tpm,Two_cell_3$tpm)
Tauschii_abundance_tpm<- as.data.frame(Tauschii_abundance_tpm)
rownames(Tauschii_abundance_tpm) <- Two_cell_1$target_id
colnames(Tauschii_abundance_tpm) <- c('early_endo_1','early_endo_2','grain_10d_1','grain_10d_2','grain_10d_3',
                                      'grain_27d_1','grain_27d_2','grain_27d_3','late_endo_1','late_endo_2',
                                      'leaf_early_1','leaf_early_2','leaf_late_1','leaf_late_2',
                                      'leaf_middle_1','leaf_middle_2','mature_1','mature_2','root_1','root_2','root_3',
                                      'SC_pericarp_1','SC_pericarp_2','SC_pericarp_3','seedling_1','seedling_2','seedling_3', 
                                      'Transition_1','Transition_2','Two_cell_1','Two_cell_2','Two_cell_3')
Tauschii_abundance_tpm$target_id <- Two_cell_1$target_id
AtRKD_tpm<-Tauschii_abundance_tpm[grep("RKD",Tauschii_abundance_tpm$target_id),]

Target_ID <- AtRKD_tpm[,33]
AtRKD_tpm<-AtRKD_tpm[,c(1:32)]
AtRKD_tpm$target_id <- "AtRKD1-7D"

AtRKD3_7D_tpm<-Tauschii_abundance_tpm[grep("AET7Gv20481900",Tauschii_abundance_tpm$target_id),]

Target_ID <- AtRKD3_7D_tpm[,33]
AtRKD3_7D_tpm<-AtRKD3_7D_tpm[,c(1:32)]
AtRKD3_7D_tpm <- AtRKD3_7D_tpm[1,] + AtRKD3_7D_tpm[2,] + AtRKD3_7D_tpm[3,] + AtRKD3_7D_tpm[4,] + AtRKD3_7D_tpm[5,]+
  AtRKD3_7D_tpm[6,] + AtRKD3_7D_tpm[7,] + AtRKD3_7D_tpm[8,] + AtRKD3_7D_tpm[9,] + AtRKD3_7D_tpm[10,] +AtRKD3_7D_tpm[11,]
AtRKD3_7D_tpm$target_id <- Target_ID[2]

AtRKD4_7D_tpm<-Tauschii_abundance_tpm[grep("AET6Gv20761000",Tauschii_abundance_tpm$target_id),]

Target_ID <- AtRKD4_7D_tpm[,33]
AtRKD4_7D_tpm<-AtRKD4_7D_tpm[,c(1:32)]
AtRKD4_7D_tpm$target_id <- "AET6Gv20761000"

AtRKD6a_2D_tpm<-Tauschii_abundance_tpm[grep("AET2Gv20898300",Tauschii_abundance_tpm$target_id),]

Target_ID <- AtRKD6a_2D_tpm[,33]
AtRKD6a_2D_tpm<-AtRKD6a_2D_tpm[,c(1:32)]
AtRKD6a_2D_tpm <- AtRKD6a_2D_tpm[1,] + AtRKD6a_2D_tpm[2,] + AtRKD6a_2D_tpm[3,] + AtRKD6a_2D_tpm[4,] + AtRKD6a_2D_tpm[5,]+
  AtRKD6a_2D_tpm[6,] 
AtRKD6a_2D_tpm$target_id <- Target_ID[2]

AtRKD6b_2D_tpm<-Tauschii_abundance_tpm[grep("AET2Gv20898100",Tauschii_abundance_tpm$target_id),]

Target_ID <- AtRKD6b_2D_tpm[,33]
AtRKD6b_2D_tpm<-AtRKD6b_2D_tpm[,c(1:32)]
AtRKD6b_2D_tpm <- AtRKD6b_2D_tpm[1,] + AtRKD6b_2D_tpm[2,] + AtRKD6b_2D_tpm[3,] + AtRKD6b_2D_tpm[4,] + AtRKD6b_2D_tpm[5,]+
  AtRKD6b_2D_tpm[6,] 
AtRKD6b_2D_tpm$target_id <- Target_ID[2]

AtRKD9_3D_tpm<-Tauschii_abundance_tpm[grep("AET3Gv20387300",Tauschii_abundance_tpm$target_id),]

Target_ID <- AtRKD9_3D_tpm[,33]
AtRKD9_3D_tpm<-AtRKD9_3D_tpm[,c(1:32)]
AtRKD9_3D_tpm <- AtRKD9_3D_tpm[1,] + AtRKD9_3D_tpm[2,] + AtRKD9_3D_tpm[3,] + AtRKD9_3D_tpm[4,] + AtRKD9_3D_tpm[5,]
AtRKD9_3D_tpm$target_id <- Target_ID[2]

AtRKD10_7D_tpm<-Tauschii_abundance_tpm[grep("TRIDC7AG023400",Tauschii_abundance_tpm$target_id),]

Input <- rbind(AtRKD_tpm,AtRKD3_7D_tpm,AtRKD4_7D_tpm,AtRKD6a_2D_tpm,AtRKD6b_2D_tpm,AtRKD9_3D_tpm)
rownames(Input)<-c("AtRKD1-7D","AtRKD3-7D","AtRKD4-7D","AtRKD6A-2D",
                   "AtRKD6B-2D","AtRKD9-3D")

Early_endo <- cbind(Input$early_endo_1,Input$early_endo_2)
Early_endo <- rowMeans(Early_endo)

Grain_10d <- cbind(Input$grain_10d_1,Input$grain_10d_2,Input$grain_10d_3)
Grain_10d <- rowMeans(Grain_10d)

Grain_27d <- cbind(Input$grain_27d_1,Input$grain_27d_2,Input$grain_27d_3)
Grain_27d <- rowMeans(Grain_27d)

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

Root <- cbind(Input$root_1,Input$root_2,Input$root_3)
Root <- rowMeans(Root)

SC_pericarp <- cbind(Input$SC_pericarp_1,Input$SC_pericarp_2,Input$SC_pericarp_3)
SC_pericarp <- rowMeans(SC_pericarp)

Seedling <- cbind(Input$seedling_1,Input$seedling_2,Input$seedling_3)
Seedling <- rowMeans(Seedling)

Transition <- cbind(Input$Transition_1,Input$Transition_2)
Transition <- rowMeans(Transition)

Two_cell <- cbind(Input$Two_cell_1, Input$Two_cell_2,Input$Two_cell_3)
Two_cell <- rowMeans(Two_cell)

Input <- cbind(Early_endo,Late_endo,Grain_10d,Grain_27d,Leaf_early,Leaf_middle,Leaf_late,Mature,Root,SC_pericarp,Seedling,Transition,Two_cell)

colnames(Input) <- c("Early_endo","Late_endo","Grain_10d","Grain_27d","Leaf_early","Leaf_middle","Leaf_late","Mature","Root","SC_pericarp","Seedling","Transition","Two_cell")
rownames(Input)<-c("AtRKD1-7D","AtRKD3-7D","AtRKD4-7D","AtRKD6A-2D",
                   "AtRKD6B-2D","AtRKD9-3D")

library(pheatmap)

Input <-  Input[apply(Input, MARGIN = 1, FUN = function(x) sd(x) != 0 ),]
library(RColorBrewer)
col.pal <- RColorBrewer::brewer.pal(9, "Blues")
pheatmap(log(Input+1), scale = "none",border_color=NA,cluster_cols=F,show_rownames = T, main = 'Tauschii timecourse',color=col.pal)


### TaRKD1-7D tpm ### 
TaRKD1_7D_tpm <- as.data.frame(Tauschii_abundance_tpm[nrow(Tauschii_abundance_tpm),])
rownames(TaRKD1_7D_tpm) <- colnames(Tauschii_abundance_tpm)

TaRKD1_7D_tpm[,2] <- c('early_endo','early_endo','late_endo','late_endo',
                       'leaf_early','leaf_early','leaf_late','leaf_late',
                       'leaf_middle','leaf_middle','mature','mature',
                       'SC_pericarp','SC_pericarp','SC_pericarp','Transition',
                       'Transition','Two_cell','Two_cell','Two_cell')

colnames(TaRKD1_7D_tpm) <- c("TPM","Sample")


Tauschii_abundance_counts <- cbind(early_endo_1$est_counts,early_endo_2$est_counts,late_endo_1$est_counts,early_endo_2$est_counts,
                                   leaf_early_1$est_counts,leaf_early_2$est_counts,leaf_late_1$est_counts,leaf_late_2$est_counts,
                                   leaf_middle_1$est_counts,leaf_middle_2$est_counts,mature_1$est_counts,mature_2$est_counts,
                                   SC_pericarp_1$est_counts,SC_pericarp_2$est_counts,SC_pericarp_3$est_counts,Transition_1$est_counts,
                                   Transition_2$est_counts,Two_cell_1$est_counts,Two_cell_2$est_counts,Two_cell_3$est_counts)

rownames(Tauschii_abundance_counts) <- Two_cell_1$target_id
colnames(Tauschii_abundance_counts) <- c('early_endo_1','early_endo_2','late_endo_1','early_endo_2',
                                         'leaf_early_1','leaf_early_2','leaf_late_1','leaf_late_2',
                                         'leaf_middle_1','leaf_middle_2','mature_1','mature_2',
                                         'SC_pericarp_1','SC_pericarp_2','SC_pericarp_3','Transition_1',
                                         'Transition_2','Two_cell_1','Two_cell_2','Two_cell_3')


TaRKD3_7D_tpm <- as.data.frame(Tauschii_abundance_tpm[rownames(Tauschii_abundance_tpm)=="AET7Gv20481900.1",])

TaRKD3_7D_tpm[,2] <- c('early_endo','early_endo','late_endo','late_endo',
                       'leaf_early','leaf_early','leaf_late','leaf_late',
                       'leaf_middle','leaf_middle','mature','mature',
                       'SC_pericarp','SC_pericarp','SC_pericarp','Transition',
                       'Transition','Two_cell','Two_cell','Two_cell')

colnames(TaRKD3_7D_tpm) <- c("TPM","Sample")

library(ggplot2)
library(RColorBrewer)
nb.cols <- 9
mycolors <- colorRampPalette(brewer.pal(9, "Set2"))(nb.cols)

ggplot(TaRKD1_7D_tpm,aes(Sample,TPM,fill=forcats::fct_rev(Sample))) + 
  stat_boxplot()+ geom_point() +
  scale_fill_manual(values = mycolors) + theme_ggstatsplot()


