# Data Structures in R
# Vectors----



#Matrices----


#Arrays----

# Data Frames----

#Factors----
x=1:10 #create sequence of numbers from 1 to 10. Then press Ctrl+Enter
x
x1<-1:20
x1
(x1=1:30) #create sequence and print as well

(x2=c(1,2,3,4))#concatenate
class(x2)
(x3=letters[1:10]) #prints first 10 letters
LETTERS[1:26] #prints all letters
(x3b=c("A","Ashutosh","4")) #hybrid vector
?c # help about command C
(x4=c(T,FALSE,TRUE,T,F))
x5=c(3L,5L)
class(x5)
x5a=c(3,5)
class(x5a)
(x6=seq(0,100,by=3))
methods(class='numeric')
ls() #variables in my environment
x6
length(x6)#number of entries in variable
x6[20] #use square bracket for index. Access 20th element
x6[c(2,4)] #access 2nd and 4th element
x6[-1] #access all but first element
x6[-c(1:10)] #removes 1st to 10th entry
x6[c(2.4,3.54)]# real numbers are truncated to integers
x6[-c(1,5,20)]#removes 1st, 5th and 20th
(x7=c(x6,x2))#combine 2 vectors
rev(x6)#reverse the order of creation
sort(x6[-c(1,2)]) #sort x6 without taking 1st and 2nd element
sort(x2)
sort(x2,decreasing = T)#sort in decreasing order
x[2]<-0;x #modify second element
x[x<0]=5;x  #modify elements less than 0
x


#delete vector
(x=rnorm(100))
plot(density(x)) #density plot
x1=rnorm(10000,mean=50, sd=5)
x1
#MAtrix
100:111
(m=matrix(1:12,nrow=4))
(m1=matrix(1:12,ncol=3,byrow= T))
attributes(m1) #rows and columns
length(m1) #number of elements

#access elements of matrix
m1[2,1:3] 
m1[c(1,3),]
m1[,c(1,3)]
paste("c","D",sep="-")
paste("c",1:100,sep="-")
colnames(m1)=paste("c",1:3,sep="-")
m1
m3=1:24
dim(m3)=c(6,4)
colSums(m1)
sweep(m1,MARGIN = 1, STATS = c(2,3,4,5),FUN = "+") #row wise
sweep(m1,MARGIN = 2, STATS = c(2,3,4,5),FUN = "*")# col wise
?addmargins
addmargins(m1,2,mean)
addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd)))

(rollno = 1:30)
(sname= paste('student',1:30,sep=" "))
(gender= sample(c('M','F'),size=30,replace = T,prob = c(.7,.3)))
(marks=floor(rnorm(30,mean = 50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
course=sample(c('BBA','MBA'),size = 30,replace = T,prob = c(.5,.5))
course
df1=data.frame(rollno,sname,gender,course,marks,marks2,stringsAsFactors = F)
df1
str(df1)
head(df1)
summary(df1)




#factors
(grade= sample(c('a','b','c','d'),size = 30,replace = T,prob=c(.2,.4,.3,.1)))
(gradesF=factor(grade))
gradesF
summary(gradesF)
table(grade)
table(gradesF)
class(gradesF)
(gradesF0=factor(grade, ordered = T))
(gradesF01=factor(grade,ordered = T,levels = c('c','b','d','a')))
summary(gradesF01)
(marks=ceiling(rnorm(30,mean=60,sd=5)))
(student1=data.frame(marks,gradesF01))
(boxplot(marks~gradesF01,data = student1))
boxplot(marks)
summary(marks)
abline(h=summary(marks))
abline
quantile(marks)
library(dplyr)
