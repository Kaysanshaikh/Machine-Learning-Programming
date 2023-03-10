df=read.csv("C:/Users/Admin/Desktop/Dataset/AGE.csv")
df
plot(df)
boxplot(df)

#Make the cluster
set.seed(20)
c1=kmeans(df[,1:2],3)
c1

#SHOW THE IRIS DATA SET
iris

#View(iris)
head(iris) 
summary(iris)
plot(iris)

plot(iris[,3:4])
kmeansc1=kmeans(iris[,3:4],3)

kmeansc1

#PRINT CONFUSION MATRIX
table(kmeansc1$cluster,iris$Species)

#CALCULATION OF ACCURACY 94.6%
boxplot(iris)
