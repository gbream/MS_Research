library(scPDSI)
library(SPEI)
library(datasets)
library(plyr)

#PDSI CALCULATIONS
All_data <- read.csv("Climate_Lat_PET_AWC.csv")

#Splitting into object by Site_ID
Split_all_data <- split(All_data, All_data$Site_ID)

PDSI_161 <- pdsi(P=Split_all_data[[161]]$Prec, PE=Split_all_data[[161]]$PET, AWC = 142.9)

lapply(PDSI_161$X, function(x) write.table(data.frame(x),"161_Final_PDSI_data.csv", sep=",", append=TRUE))