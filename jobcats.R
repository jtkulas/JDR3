## Job classifications

data <- read.csv("C:\\Users\\kulasj\\Downloads\\workers.csv")

library(ggplot2)

ggplot(data, aes(O.Net.Job.Family.Categories))+
  geom_histogram(stat="count") + coord_flip()

## Using Fleiss' Kappa; https://www.datanovia.com/en/lessons/fleiss-kappa-in-r-for-multiple-categorical-variables/


interrater <- read.csv("interrater.csv")

library(irr)

kappam.fleiss(interrater)  
