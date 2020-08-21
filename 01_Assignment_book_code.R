install.packages("arules")
library("arules")
my_bk <- read.csv(file.choose())
View(my_bk)
bk_rul_01 <- apriori(as.matrix(my_bk),parameter = list(support=0.02,confidence=0.5,minlen=5))
bk_rul_01
inspect(sort(bk_rul_01,by="lift"))

#Ploting the rules
install.packages("arulesViz")
library(arulesViz)
plot(bk_rul_01,method = "scatterplot")

plot(bk_rul_01,method="scatterplot")
plot(bk_rul_01,method = "grouped")
plot(bk_rul_01,method = "graph")
