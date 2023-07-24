#This code chunk identifies my working directory 
#and sets it to where I want to save and fetch files
#TASK: fill in between the parentheses if needed. 
#If not needed, make the two lines a comment
getwd()
setwd("C:\\Users\\Ferrari\\OneDrive - McDaniel College\\Documents")

#This brings the 'Titanic' data into my environment from Base R (Run this)
Titanic

#This code saves the Titanic data as a dataframe with a new name
#TASK: Save the Titanic data as a dataframe with a new name that includes your first name
#for example I would name my data AnnaTitanic
jiawen_titanic <- Titanic

#This code chunk allows me to see the top 2 rows of my data
#TASK: Write the code that returns the top rows
top_rows <- head(jiawen_titanic, n = 2)
print(top_rows)

#This code chunk shows me the internal structure 
#Task: Write the code that shows the number of rows, columns, column names, class of columns   
num_rows <- nrow(jiawen_titanic)
num_cols <- ncol(jiawen_titanic)
column_names <- colnames(jiawen_titanic)
column_classes <- sapply(jiawen_titanic, class)
print(num_rows)
print(num_cols)
print(column_names)
print(column_classes)

#This code chunk shows me some basic summary stats
#Such as Min, Max, Mean. Quartiles...
#Task: Write the code that gives summary stats
summary_stats <- summary(jiawen_titanic)
print(summary_stats)

#This allows me to save one column as its own object ('values' in the Environment)
#Task: Write the code to create an object for just the Sex column 
#and write the code to create an object for just the Age column 
#(these should show as values in the environment window, not as 'datasets'Data')
sex_column <- dimnames(jiawen_titanic)[[2]]
print(head(sex_column))
age_column <- dimnames(jiawen_titanic)[[3]]
print(head(age_column))

#This takes the individual objects ('values' in the Environment) and creates a dataframe
#Once I do this, I can see the Data in the Environment 
#Task: Write the code to create one new data.frame from the Sex and Age values you just created
new_dataframe <- data.frame(Sex = sex_column, Age = age_column)
print(new_dataframe)

#This code chunk creates a subset from my dataset
#Note that the subset only appears in the Console (not the Environment)
#Task: Write the code to create a subset of the data where the Freq is > 25
#If I wanted to save the subset, I would need to name it as done in the code above
subset_data <- jiawen_titanic[jiawen_titanic > 25]
print(subset_data)
#This shows me how many rows are in my dataset and
#TASK: Write the code that returns the number of rows
num_rows <- nrow(jiawen_titanic)
print(num_rows)

#This shows me how many columns are in my dataset
#TASK: Write the code that returns the number of columns
num_columns <- ncol(jiawen_titanic)
print(num_columns)
#This also shows me how many rows and columns with just one command
#TASK: Write the code that returns the number of rows and columns with just one command
dimensions <- dim(jiawen_titanic)
print(dimensions)

#This code will install the ggplot2 package
#TASK: Write the code that installs the ggplot2 package
install.packages("ggplot2")  
  
#This code calls the ggplot2 package so I can use its functions
#Task: Write the code that 'calls' the ggplot2 package
library(ggplot2)
#This code creates a bar chart of the number of passengers that survived 
#and did not survive (2 bars)
#Task: replace the dataframe name and column names to create the chart
#(you should see the chart in the Plots window)
jiawen_titanic_df <- as.data.frame(as.table(jiawen_titanic))
ggplot(jiawen_titanic_df, aes(Survived, fill = Survived)) +
  geom_col()

