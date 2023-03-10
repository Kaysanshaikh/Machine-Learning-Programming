# Load the USA Arrest dataset
data(USArrests)

# Check the structure of the dataset
str(USArrests)

# Rename the variables to more meaningful names
names(USArrests) <- c("State", "UrbanPop", "Murder", "Rape", "Assault")

# Check the dataset again
head(USArrests)

# Check for missing values
sum(is.na(USArrests))

# Build the Simple Linear Regression model
model <- lm(Arrest ~ UrbanPop, data = USArrests)

# Print the model summary
summary(USArrests)

# Make a prediction for urban population of 70%
new_data <- data.frame(UrbanPop = 70)
prediction <- predict(USArrests, newdata = new_data)

# Print the prediction
prediction

# Calculate the RMSE
actual_values <- USArrests$Arrest
predicted_values <- predict(USArrests)
RMSE <- sqrt(mean((actual_values - predicted_values)^2))

# Print the RMSE
RMSE