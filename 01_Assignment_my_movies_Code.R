install.packages("arules")
library(arules)
my_movies <- read.csv(file.choose())
View(my_movies)
# Generated the rules with support of 10%
movie_rules_01 <- apriori(as.matrix(my_movies[,6:15]),parameter = list(support=0.1,confidence=0.5))
inspect(head(sort(movie_rules_01,by="lift")))
install.packages("arulesViz")
library(arulesViz)
plot(movie_rules_01,method="scatterplot")
plot(movie_rules_01,method = "graph")
plot(movie_rules_01,method = "grouped")
# Generated the rules with support of 20%
movie_rules_02 <- apriori(as.matrix(my_movies[,6:15]),parameter = list(support=0.2,confidence=0.5))
inspect(head(sort(movie_rules_02,by="lift")))
plot(movie_rules_02,method="scatterplot")
plot(movie_rules_02,method = "graph")
plot(movie_rules_02,method = "grouped")
