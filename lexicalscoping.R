a<-1
b<-2

ch1<-function(x)
{
  a<-2
  b<-1
  ch2(x)
}
ch2<-function(n)
{
    a*n+b
}

