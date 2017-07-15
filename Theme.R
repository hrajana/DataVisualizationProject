library(ggplot2)
library(ggthemes)
df <- mtcars

pl <- ggplot(df,aes(x=mpg,y=hp)) + geom_point()
print(pl + theme_tufte())
  