#data analysis using dplyr

library(dplyr)
?mtcars
dplyr::filter(mtcars,mpg>25&am==1)
mtcars%>%filter(mpg>25&am==1)%>%arrange(wt)%>%summarise(n())
mtcars%>%group_by(am)%>% summarise(mean(mpg))
mtcars%>%group_by(am)%>%summarise(mean(gear))
mtcars%>%group_by(am)%>%summarise(mean(wt))

filter(mtcars,cyl==8)                                  
filter(mtcars,row_number())