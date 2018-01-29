#Install the Biobase library
#source("https://bioconductor.org/biocLite.R")
#biocLite("Biobase")
library(Biobase)

#Install the package seventyGeneDat which contains the vanDeVijver data
#source("https://bioconductor.org/biocLite.R")
#biocLite("seventyGeneData")

library(seventyGeneData)

#load the data
data(vanDeVijver)

#This data is stored in the form of an Expression Set which is a fundamental
# data container in bioconductor class which is defined in the Biobase package.

#Look at the experimental data using
experimentalData(vanDeVijver)

#exprs(vanDeVijver) is a numeric matrix containing the 24496 gene Expression
# measurements on the 295 samples.

#We can look at the data by
exprs(vanDeVijver[1:4,1:4])

#We can look at the featureNames and the sampleNames by the following commands

head(featureNames(vanDeVijver))
head(sampleNames(vanDeVijver))

#pData data.frame contains the phenotype information, i.e the patient or sample
# information.

head(pData(vanDeVijver))
#Here we are only interested in the FiveYearMetastasis column which indicates
# if the cancer has returned or not
head(pData(vanDeVijver)$FiveYearMetastasis)
head(vanDeVijver$FiveYearMetastasis)

#We can keep tract of how the expression values are matched to the pheno data
#using subsetting of this object.

vanDeVijver[,1:5]
#24496 features and 5 samples
vanDeVijver[1:10,]
#10 features, 295 samples
vanDeVijver[1:10,1:5]
#10 features, 5 samples

#Even on changing the order of the samples, we get the correct expression values
vanDeVijver[,c(3,1,2)]
