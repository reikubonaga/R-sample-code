#
choose(4, 2)/2**4
#
dbinom(4, 8, 0.5)

barplot(dbinom(0:8,8,0.5), names.arg=0:8)

pbinom(0:8,8,0.5)

barplot(pbinom(0:8,8,0.5), names.arg=0:8)

sum(dbinom(3:5,8,0.5))

dbinom(50, 100, 0.5)

n=100;r=0.01;sum(dbinom((n/2-n*r):(n/2+n*r),n,0.5))

binom.test(57, 100, 0.5, conf.level = 0.75)

prop.test(c(50, 57), c(100, 100), conf.level = 0.75)


n=100;
rate=0.5;
z<-c();
for(i in 1:10000){
  x=runif(n, 0, 1);
  y=which(x<rate);
  z[i]=length(y)/n
}
quantile(z, c(.01,.05,.25,.5,.75,.95,.99))
