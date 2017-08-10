data("Auto")
summary(Auto)
head(Auto)
attach(Auto)

lm.fit = lm(mpg ~ horsepower)
summary(lm.fit)


#9(a)
pairs(Auto)

#9(b)
# Compute the matrix of correlations between the variables using the function cor(). 
# You will need to exclude the name variable, which is qualitative.

cor(subset(Auto, select = -name))
lm.fit1 = lm(mpg~.-name, data = Auto)
summary(lm.fit1)