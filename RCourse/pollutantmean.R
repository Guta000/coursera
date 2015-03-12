pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        allData = numeric()
        
        for (i in id){
                fileName = file.path(directory, sprintf("%03d.csv", i))
                data = read.csv(fileName)
                allData = c(allData,data[,pollutant])
        }
        
        mean(allData,na.rm = TRUE)
}