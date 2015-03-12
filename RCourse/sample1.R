add2 = function(x,y){
  x + y
}

colomnMean = function(x){
  nc = ncol(x)
  means = numeric(nc)
  for(i in 1:nc){
    means[i] = mean(x[,i])
  }
  
  means
}



directory = "C:/Users/Nip/Documents/Coursera/data/specdata"
a = read.csv(directory)
mean(a[,'sulfate'],na.rm = TRUE)

pollutantmean(directory,'sulfate')

complete(directory)


