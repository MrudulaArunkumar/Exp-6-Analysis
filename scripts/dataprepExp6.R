library(tidyverse)
library(plyr)

dir <- setwd("D:/PhD/Experiments/Exp6/raw data/Prolific raw data")

#saving all the csv files in that directory into one variable
allOldata <- list.files(path = dir, pattern = "*.csv")

#making the file names into one list
Exp6data <- lapply(allOldata, read_csv)

#using rbind to save it al in on df
#using rbind.fill because some columns do not exist in some datafiles, namely the "preResp.key" 
Exp6 <- do.call(rbind.fill,Exp6data)

write.csv(Exp6, file = "Exp6_fulldataset.csv")
