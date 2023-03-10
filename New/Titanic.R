# Load the titanic_train.csv dataset
titanic <- read.csv("C:/Users/Admin/Desktop/Dataset/titanic_train.csv", header = TRUE)

# Removing rows with missing values
titanic_clean <- na.omit(titanic)
titanic_clean

# Replacing missing values with 0
titanic_replace <- replace(titanic, is.na(titanic), 0)
titanic_replace

# Imputing missing values with the mean of the column
titanic_impute <- transform(titanic, b = ifelse(is.na(b), mean(b, na.rm = TRUE), b))
titanic_impute

# Work with categorical variables
titanic$Sex <- factor(titanic$Sex)
titanic$Embarked <- factor(titanic$Embarked)
titanic$Embarked

# Using dummy coding for categorical variables
titanic_dummies <- model.matrix(~ a + b, data = titanic)
print(titanic_dummies)

# Detect outliers using boxplots
boxplot(titanic$Age, main = "Boxplot of Age")
boxplot(titanic$Fare, main = "Boxplot of Fare")

# Identify outliers based on Tukey's method
age_outliers <- boxplotstats(titanic$Age)$out
fare_outliers <- boxplot.stats(titanic$Fare)$out

# Remove outliers from the dataset
titanic_clean <- titanic[!(titanic$Age %in% age_outliers | titanic$Fare %in% fare_outliers), ]

# Check the new dataset without outliers
summary(titanic_clean)
