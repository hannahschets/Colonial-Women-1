#Creating graph 



pop = read.csv("Populations.csv")
View(pop)

library(tidyverse)
library(ggplot2)

str(pop$Date)
#Recognizing it as integer...I need to change to a character
year <- pop %>% mutate(Date = as.character(pop$Date))
str(year$Date)
#A character now

graph = ggplot(data = pop, aes(x=Date, y=Population)) + 
  geom_point() + geom_line()
graph

graph = ggplot(data = year, aes(x=Date, y=Population)) + 
  geom_point() + geom_line()
graph