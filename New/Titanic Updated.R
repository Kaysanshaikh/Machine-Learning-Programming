# Load the titanic_train.csv dataset
data <- read.csv("C:/Users/Admin/Desktop/R Practical/Dataset/titanic_train.csv", header = TRUE)

# Check for missing values
sum(is.na(data))

# Delete missing values
data <- na.omit(data)

# Check for missing values again
sum(is.na(data))

# Replace missing values with 0
data[is.na(data)] <- 0

# Replace missing values with the mean of the variable
mean_age <- mean(data$Age, na.rm = TRUE)
data$Age[is.na(data$Age)] <- mean_age

# Install and load the mice package
install.packages("mice")
library(mice)

# Impute missing values with the mean of the variable
imp_data <- mice(data, method = "mean")

# Extract the completed data
completed_data <- complete(imp_data)

# Install and load the caret package
install.packages("caret")
library(caret)

# Convert the Sex variable to dummy variables
dummies <- dummyVars(~ Sex, data = data)
dummy_data <- predict(dummies, newdata = data)

# Create boxplots to identify outliers
boxplot(data$Age)

# Remove outliers
data <- data[data$Age < 80, ]
