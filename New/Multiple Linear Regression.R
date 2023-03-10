# load dataset
data(mtcars)

# check for missing values
sum(is.na(mtcars))

# check for outliers
boxplot(mtcars)

# scale variables (if necessary)
scaled_mtcars <- scale(mtcars)

# prepare model
model <- lm(mpg ~ wt + hp + cyl, data = mtcars)
summary(model)

# predict mpg of a car
new_data <- data.frame(wt = 3.2, hp = 200, cyl = 8)
predict(model, newdata = new_data)

# evaluate model
summary(model)