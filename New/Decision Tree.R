# Install required libraries
install.packages("rpart") 
install.packages("tree")
install.packages("rattle")

# Load required libraries
library(rpart)
library(rpart.plot)

# Load the iris dataset
data(iris)

# Split data into training and testing sets
set.seed(123)
train_index <- sample(1:nrow(iris), 100)
train_data <- iris[train_index, ]
test_data <- iris[-train_index, ]

# Build Decision Tree model
dt_model <- rpart(Species ~ ., data = train_data, method = "class")

# Visualize the Decision Tree
rpart.plot(dt_model)

# Make predictions on the testing set
predictions <- predict(dt_model, test_data, type = "class")

# Evaluate model accuracy
accuracy <- sum(predictions == test_data$Species) / nrow(test_data)
print(paste("Accuracy: ", round(accuracy * 100, 2), "%"))
