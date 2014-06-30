pollutantmean <- function(directory, pollutant, id = 1:332) {
        csvdata<-data.frame()
        for(file in id){
                csvdata<-rbind(csvdata,read.table(paste(directory,"/",sprintf("%03d", file),".csv",sep=""),sep=",",header=TRUE))
                
        }
        mean(as.matrix(csvdata[pollutant]),na.rm=TRUE)
}
