corr<- function(directory, threshold = 0) {
        total<-numeric()
        for(file in list.files(directory)){
                csvdata<-read.table(paste(directory,"/",file,sep=""),sep=",",header=TRUE)
                rowNumb<-nrow(csvdata[complete.cases(csvdata),])
                if(rowNumb>threshold){
                        total<-c(total,cor(csvdata$nitrate,csvdata$sulfate,use="complete.obs"))
                }
        }
        as.numeric(total)
        
}