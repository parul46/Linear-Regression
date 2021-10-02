# load the data
# This dataset gives the speed of cars and distance taken to stop
snd <- datasets::cars
print(snd)
# calculate karl pearson's correlation coefficient
cor(snd$speed,snd$dist,method = "pearson")
# calculate regression
# create simple regression model using lm() function
model <- lm(dist~speed, data = snd)
# print summary of the model 
print(summary(model))
# print coefficients
coeff <- coefficients(model)
print(coeff)
# method  - using inbuilt function predicting data
newdata <- data.frame(speed = 50)
predict(model,newdata)
# scatterplot of the given dataset
plot(snd$speed,snd$dist,main = "Speed of Cars and Distance taken to stop ",
     xlab = "Speed",ylab = "Distance",col = "Red")
# plot the regression line
abline(model)
