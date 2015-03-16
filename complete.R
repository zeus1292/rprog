#Number of Completely Observed Cases

complete<-function(directory,id=1:332)
{
  count<-1
  path<-paste(directory,"/",sep="")
  files<-list.files(path,pattern="*.csv")
  df1<-data.frame(a<-numeric(0),b<-numeric(0))
  colnames(df1)<-c("id","nobs")
  for(i in id)
  {
    pathtemp<-paste(path,files[i],sep="/")
    temp<-read.csv(pathtemp)
    temp<-na.omit(temp)
    df1[count,1]<-i
    df1[count,2]<-nrow(temp)
    count<-count+1
  }
  df1
}