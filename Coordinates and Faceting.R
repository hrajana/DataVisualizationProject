#Coordinated and Faceting
library(ggplot2)
p1 <- ggplot(mpg, aes(x = displ, y = hwy)) + geom_point()
#Coord_cartesian reset the x and y limits
pl2 <- p1 + coord_cartesian(xlim = c(1,4), ylim = c(15,30))
#Coord_fixed: allows you to set the aspect ratios, y:xhe


#Facet: make multiple plots separated by a certain column 
#Depending on the side of the tilde, you're separating by x or y side 
print(p1 + facet_grid(. ~ cyl))
print(p1 + facet_grid(drv ~ cyl))