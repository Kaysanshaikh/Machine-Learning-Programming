# Load the mtcars dataset
data(mtcars)

# Create two groups based on number of cylinders
group1 <- mtcars$mpg[mtcars$cyl == 4]
group2 <- mtcars$mpg[mtcars$cyl == 8]

# Perform the two-sample t-test
t.test(group1, group2)

# Paired sample t-test
t.test(mtcars$mpg,mtcars$wt, paired = TRUE)

# Conduct an ANOVA test to examine the relationship between mpg and vs, am, and gear
fit <- lm(mpg ~ vs + am + gear, data = mtcars)
anova(fit)


