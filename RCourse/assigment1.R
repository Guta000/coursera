pollutantmean <- function(directory, pollutant, id = 1:332) {
        
        allData = numeric()
        
        for (i in id){
                fileName = file.path(directory, sprintf("%03d.csv", i))
                data = read.csv(fileName)
                allData = c(allData,data[,pollutant])
        }

        mean(allData,na.rm = TRUE)
}



complete <- function(directory, id = 1:332) {
        
        len = length(id)
        data = data.frame(name=character(len),
                                copleteCases = numeric(len),
                                stringsAsFactors=FALSE) 
        
        for (i in id){
                fileName = sprintf("%03d.csv", i);
                filePath = file.path(directory, fileName)
                fileData = read.csv(filePath)
                data[i,"name"] = fileName
                data[i,"copleteCases"] = sum(complete.cases(fileData))
                
        }
        
        data
}