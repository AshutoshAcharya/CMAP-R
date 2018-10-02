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
?plot

plot(age,grade,'l')
