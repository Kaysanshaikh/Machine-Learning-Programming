df=read.csv("C:/Users/Admin/Desktop/Linear.csv")
#Use 70% of dataset as training set and remaining 30% as testing set
sample <- sample(c(TRUE, FALSE), nrow(df), replace=TRUE, prob=c(0.7,0.3))
train  <- df[sample, ]
test   <- df[!sample, ]
print(sample)
print(train)
print(test)

x=train$Weight
y=train$Height
print(x)
print(y)
 
#Apply the lm() function.
relation=lm(y~x) 
print(relation)

print(summary(relation)) 
a=data.frame(x=170) 
result=predict(relation,a) 
print(result)
plot(y,x,col="blue",main="Height & Weight Regression",abline(lm(x~y)),cex=1.3,pch=16,xlab= "Weight In Kg",ylab="Height in cm")

#Evaluating Model
data.predicted = c(predict(relation, data.frame(x = df.x)))    
data.predicted





