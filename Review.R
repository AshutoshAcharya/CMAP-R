population= sample(c('M','F'),size = 100,replace = T)
population
spl=sample(c('marketing','finance','HR'),size = 100,replace =T,prob =c(.33,.33,.34))
spl
grade=sample(c('a', 'b', 'c' , 'd' , 'e'),size = 100,replace = T)

grade
placement=sample(c('yes','no'),size = 100,replace = T)
age=ceiling(runif(100,min = 21,max = 30))
age
xps=rnorm(100,3,1)
df=data.frame(age,population,grade,xps,spl)
summary(df)
df
df$grade=factor(df$grade,ordered = T,c('e','d','c','b','a'))
?plot

plot(df$age,df$spl,'p')
prop.table(table(population))
write.csv(df,file="./R work/Review.csv")
library(dplyr)
?summarise
df%>%group_by(population)%>%summarise(mean(xps),max(xps),mean(age))
filter(df,spl==c("Finace"))
hist(df$age)
t1=table(df$population)
barplot(t1,col=1:2)
boxplot(df$age)
pie(df$placement)
hist(df$xps)
table(df)
pie(table(df$population,df$xps))
students2= read.csv('./data/Review.csv')
head(students2)

#clustering
km3=kmeans(df[,c('age','xps')],centers = 3)
km3
km3$centers
plot(df[,c('age','xps')],col=km3$cluster)


#decision tree
library(rpart)
library(rpart.plot)
tree=rpart(placement~.,data = df)
tree
rpart.plot(tree,nn=T,cex = .8)
printcp(tree)
ndata=sample_n(df,3)
ndata


#logistic regression
logitmodel1=glm(placement~.,data=df,family = 'binomial')
                