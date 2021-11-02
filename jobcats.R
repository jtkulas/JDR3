## Job classifications

data <- read.csv("C:\\Users\\kulasj\\Downloads\\workers.csv")

library(ggplot2)

ggplot(data, aes(O.Net.Job.Family.Categories))+
  geom_histogram(stat="count") + coord_flip()
