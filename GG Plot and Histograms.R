#GGPlot: data visualization, built on the idea of layers of data
  #first 3: data, aesthetics, and geometry
  #second 3: facets, statistics, coordinates
library(ggplot2)
pl <- ggplot(data = mtcars, aes(x = mpg, y = hp))
pl + geom_point()

#Histograms
#install.packages('ggplot2movies)
library(ggplot2)
library(ggplot2movies)

#Data, Aesthetics layer - not adding as a new layer, putting it into original functions
pl <- ggplot(movies,aes(x = rating))

#Geometry layer
pl + geom_histogram()
  
  #customization - binwidth, alpha, color, fill, linetype, etc
  #alpha: transparency of plotted data
pl2 <- pl + geom_histogram(binwidth = 0.1, aes(fill= ..count..))

#labels
pl3 <- pl2 + xlab('Movie Rating') + ylab('Count')

print(pl3 + ggtitle("Frequency of Movie Ratings"))

#ScatterPlots