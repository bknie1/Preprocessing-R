# Data Preprocessing Template

# Importing the dataset
dataset = read.csv('Data.csv')
print(dataset)

# Missing Data Management
# If Age is not available: Replace w/ the average of Age where Age is na.
dataset$Age = ifelse(is.na(dataset$Age),
					ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                    dataset$Age)

# If Salary na: Replace w/ the ave of Salary where it is na.
dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                        dataset$Salary)

print(dataset)