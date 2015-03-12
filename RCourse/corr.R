corr <- function(directory, threshold = 0) {
        
        correlations = numeric()
        
        for (i in id){
                fileName = file.path(directory, sprintf("%03d.csv", i))
                data = read.csv(fileName)
                
                if (sum(complete.cases(data))>threshold){}
                
        }
        
}