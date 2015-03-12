directory = "specdata"

source("pollutantmean.R")
source("complete.R")
source("corr.R")


pollutantmean(directory,'sulfate')

pollutantmean(directory, "sulfate", 1:10)
pollutantmean(directory, "nitrate", 70:72)
pollutantmean(directory, "nitrate", 23)

complete(directory, 1)
complete(directory,c(2, 4, 8, 10, 12))
complete(directory, 30:25)
complete(directory, 3)


cr <- corr("specdata", 150)
head(cr)
summary(cr)

cr <- corr("specdata", 400)
head(cr)

cr <- corr("specdata", 5000)
summary(cr)
length(cr)

cr <- corr("specdata")
summary(cr)
