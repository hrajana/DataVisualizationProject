#BOXPLOTS
library(ggplot2)
df <- mtcars

#DATA AND AESTHETICS
# p1 <- ggplot(df, aes(x = cyl, y = mpg))
# 
# print(pl + geom_boxplot()) 
#wrong, because you have created one boxplot for what chould be several categories
pl <- ggplot(df, aes(x = factor(cyl), y = mpg))

print(pl + geom_boxplot())

#flip coordinates : add coord_flip()
