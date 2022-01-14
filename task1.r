
library(Metrics)

#Importing the data set to the studio
df <- read.csv("http://bit.ly/w-data")

#Creating a linear regression model
my_linear_model <- lm(Scores~Hours,data=df)

#Calling the linear model
my_linear_model

#Creating a new data frame
new <- data.frame(Hours=df$Hours)

#Fiting the linear model
liner_model <- lm(Scores~Hours,data=df)

#Predicts the future values
b <- predict(liner_model,newdata=new)

#Plotting the actual value to the predicted value
plot(df$Scores~predict(liner_model,newdata = new))

#Creating a data frame with the actual and the predicted values
a <- data.frame(Actual=df$Scores,Predicted=b)

#Printing the data frame
a

#Calculating the mean absolute error
mae(df$Scores,b)

#Storing the value to be predicted in a new data frame
df1 <- data.frame(Hours=c(9.25))

#Predicting the score for 9.25 hrs/day
predict(liner_model,newdata = df1)

