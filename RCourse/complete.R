complete <- function(directory, id = 1:332) {
        
        len = length(id)
        data = data.frame(id=numeric(len),
                          nobs = numeric(len)) 
        
        j=1
        
        for (i in id){
                fileName = sprintf("%03d.csv", i);
                filePath = file.path(directory, fileName)
                fileData = read.csv(filePath)
                data[j,"id"] = i
                data[j,"nobs"] = sum(complete.cases(fileData))
                j = j+1
        }
        
        data
}