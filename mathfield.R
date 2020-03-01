testInteger <- function(x){
      test <- all.equal(x, as.integer(x), check.attributes = FALSE)
       if(test == TRUE){ return(TRUE) }
       else { return(FALSE) }
  }


value<-array(,20200)
check<-array(,20200)
for(n in 1:20200){
value[n]<-(n+2020)/n  
check[n]<-testInteger(value[n])
}
sum(as.numeric(check))


#Problem 19
value<-array(,2019)
check<-array(,2019)
for(n in 1:2020){
  value[n]<-n*(n+1)*(n+2)/30 
  check[n]<-testInteger(value[n])
}
sum(as.numeric(check))
