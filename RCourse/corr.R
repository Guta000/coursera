corr <- function(directory, threshold = 0) {
        
        correlations = numeric()
        
        files = list.files(directory)
        
        for (file in files){
                fileName = file.path(directory, file)
                data = read.csv(fileName)
                
                is.complete = complete.cases(data)
                
                if (sum(is.complete) > threshold){
                        data.cor = cor(data$sulfate, data$nitrate, use = "complete.obs")
                        correlations = c(correlations,data.cor)
                }
                
        }
        
        correlations
}