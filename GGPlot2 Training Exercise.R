library(ggplot2)
library(ggthemes)
pl <- ggplot(mpg, aes(x = hwy))
hwympg <- pl + geom_histogram(binwidth = 1, color = 'pink', fill = 'pink')
print(hwympg)