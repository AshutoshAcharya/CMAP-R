women
plot(women)
quantile(women$height)
quantile(women$height,seq(0,1,.1))
stem(women$height)
hist(women$height,breaks = 10,col=1:10)
gender
table(gender)
pie(table(gender))
barplot(table(gender))
x=C(10,20,30)
pie(x)
barplot(x)
head(mtcars)
cor(mtcars)
names(mtcars)
pairs(mtcars)
pairs(mtcars[1:4])










breaks=seq(0,150,by=15)
breaks
length(breaks)
x3=runif(120,0,150)
x3
table(x3)
plot(x3)
