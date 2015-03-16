#pollutantmean
#df contains the temp table for calculating mean


pollutantmean<-function(directory,pollutant,id=1:332)
{
  
  path<-paste(directory,"/",sep="")
  path
  file<-list.files(path,pattern="*.csv")
  #class(file)
  df <- data.frame(Date=as.Date(character()),File=character(), User=character(), stringsAsFactors=FALSE) 
  for(i in id)
  {
    pathtemp<-paste(path,file[i],sep="/")
    temp1<-read.csv(pathtemp)
    df<-rbind(df,temp1)
  }
  mean(df[[pollutant]],na.rm=TRUE)
}

