#ScatterPlots
library(ggplot2)
df <- mtcars
#DATA AND AESTHETICS
pl <- ggplot(data = df, aes(x = wt, y = mpg))

#GEOMETRY - alpha, color, fill, shape, size
#Size of data points can be based on other features of the data frame
#If you want to define size, color, shape by another variable, must be passed into the 
#aes function
#can also put in a hex color code preceded by a #hex
# print(pl + geom_point(aes(shape= factor(cyl), color= factor(mpg)), size = 5))
pl2 <- pl + geom_point(aes(color = hp), size = 5)
pl3 <- pl2 + scale_color_gradient(low = '#66FF99', high = '#FF6A6A')
print(pl3)


