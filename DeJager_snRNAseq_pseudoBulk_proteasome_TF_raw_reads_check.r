#library(DESeq2)
#library(pheatmap)
library(ggplot2)
library(data.table)
library(gridExtra)

work_dir = '/home/shann/Documents/synapse/ROSMAP/snrnaseq/DeJager/pseudoBulk/'
out_dir = '/home/shann/Documents/Natura/proteosome/DeJager/pseudoBulk/'

celltypes = c('excitatory','inhibitory','microglia','astrocytes','endo','oligodendrocytes','opcs')
#TFs = c('NFE2L1','STAT1','IRF1','EGR1')
TFs = c('NFE2L1','NFE2L2')
marker_df = data.frame(celltype = c('excitatory','excitatory','inhibitory','inhibitory','microglia','microglia','astrocytes','astrocytes','oligodendrocytes','oligodendrocytes','opcs'),marker = c('NRGN','SCL17A7','GABBR2','GAD1','CSF1R','P2RY12','AQP4','FGFR3','MAG','MOG','VCAN'))

celltype = 'excitatory'
for(celltype in celltypes){
  dat = load(file = paste0(work_dir,celltype,'_pseudoBulk.RData'))
  celltype_marker_df = marker_df[marker_df$celltype %in% celltype,]
}
