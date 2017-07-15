#Barplots: categorical data, which isn't continuous
library(ggplot2)
df <- mpg

#DATA AND AESTHETICS
pl <- ggplot(data = df, aes(x = class))

#GEOMETRY - can color the bars based off of certain columns
#making a stacked bar plot
#position argument - outside aes
pl2 <- pl + geom_bar(aes(fill = drv), position = 'fill')
print(pl2 + xlab('class') + ylab('percentages of drive type'))