#Monitors with observations greater than the threshold and the correlation of the sulfate and nitrate values

corr<-function(directory,threshold=0)
{
  path<-paste(directory,"/",sep="")
  files<-list.files(path,pattern="*.csv")
  correl<-numeric(0)
  for(i in 1:length(files))
  {
    pathtemp<-paste(directory,files[i],sep="/")
    temp<-read.csv(pathtemp)
    temp<-na.omit(temp)
    if(nrow(temp)>threshold)
    {
      correl<-append(correl,cor(temp$sulfate,temp$nitrate))
    }
  }
  correl
}

