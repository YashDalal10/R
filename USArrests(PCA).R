states<-row.names(USArrests)
states
names(USArrests)
apply(USArrests,2,mean)
apply(USArrests,2,var)
pca1<-prcomp(USArrests,scale. = TRUE)
names(pca1)
pca1$center
pca1$scale
pca1$rotation
dim(pca1$x)
biplot(pca1,scale = 0)
pca1$rotation=-pca1$rotation
pca1$x=-pca1$x
biplot(pca1,scale = 0)
pca1$sdev  
pca1.var=pca1$sdev^2
pca1.var
#proportion of var explained
p<-pca1.var/sum(pca1.var)
p
plot(p,type = "b",ylim = c(0,1),xlab="Principle Component",ylab="Proportion of variance explained")
plot(cumsum(p),type = "b",ylim = c(0,1),xlab="Principle Component",ylab="Proportion of variance explained")
