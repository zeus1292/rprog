ch2<-function(z){
  z[z<3]
}

checking<-function(x)
{
  nc<-ncol(x)
  meancol<-numeric(nc)
  for(i in 1:nc)
  {
    meancol[i]<-mean(x[,i],na.rm=TRUE)
  }
  meancol
}