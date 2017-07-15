#2 Variable Plotting
library(ggplot2)
library(ggplot2movies)

pl <- ggplot(movies, aes(x = year, y = rating))
# install.packages('hexbin')
# pl2 <- pl + geom_hex() + scale_fill_gradient(high = 'red', low = 'green')


 pl2 <- pl + geom_density2d() + scale_fill_gradient(high = 'red', low = 'green')
 print(pl2)