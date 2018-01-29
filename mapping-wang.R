
wang = read.table("datasets/wang.txt",header=TRUE)
probe_ids = wang[,1]


#Install the hg-u133a database using the following commands
#source("http://bioconductor.org/biocLite.R")
#biocLite("hgu133a.db")

library("annotate")
library("hgu133a.db")
geneids = select(hgu133a.db, as.character(probe_ids), "ENTREZID")
entrezids_valid = geneids[which(!is.na(geneids[,2])),]
write.table(entrezids_valid, file = "EntrezGeneIds-wang.csv", sep=",")
write.table(wang, file="wang.csv",sep=",")
