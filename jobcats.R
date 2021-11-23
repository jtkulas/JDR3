## Job classifications

data <- read.csv("C:\\Users\\kulasj\\Downloads\\workers.csv")

library(ggplot2)

ggplot(data, aes(O.Net.Job.Family.Categories))+
  geom_histogram(stat="count") + coord_flip()


## Combining categories

data$O.Net.Job.Family.Categories[data$O.Net.Job.Family.Categories == "Transportation and Material Moving"] <- "Physical Labor"
data$O.Net.Job.Family.Categories[data$O.Net.Job.Family.Categories == "Protective Service"] <- "Physical Labor"
data$O.Net.Job.Family.Categories[data$O.Net.Job.Family.Categories == "Production"] <- "Physical Labor"
data$O.Net.Job.Family.Categories[data$O.Net.Job.Family.Categories == "Personal Care and Service"] <- "Physical Labor"
data$O.Net.Job.Family.Categories[data$O.Net.Job.Family.Categories == "Installation Maintenance and Repair"] <- "Physical Labor"
data$O.Net.Job.Family.Categories[data$O.Net.Job.Family.Categories == "Food Preparation and Serving Related"] <- "Physical Labor"
data$O.Net.Job.Family.Categories[data$O.Net.Job.Family.Categories == "Farming Fishing and Forestry"] <- "Physical Labor"
data$O.Net.Job.Family.Categories[data$O.Net.Job.Family.Categories == "Construction and Extraction"] <- "Physical Labor"
data$O.Net.Job.Family.Categories[data$O.Net.Job.Family.Categories == "Building and Grounds Cleaning and Maintenance"] <- "Physical Labor"

ggplot(data, aes(O.Net.Job.Family.Categories))+
  geom_histogram(stat="count") + coord_flip()



## Using Fleiss' Kappa; https://www.datanovia.com/en/lessons/fleiss-kappa-in-r-for-multiple-categorical-variables/


interrater <- read.csv("interrater.csv")

library(irr)

kappam.fleiss(interrater)  
kappam.fleiss(interrater[1:2])
kappam.fleiss(interrater[2:3])
kappam.fleiss(interrater[c(1,3)])

## J. Richard Landis and Gary G. Koch (1977)
## https://docs.google.com/spreadsheets/d/1ck-72dQ_c-Pl4Xba9W0r__OYo0znlEnV/edit#gid=1041061499
