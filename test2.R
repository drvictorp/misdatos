# Make cars scatter plot
library(ggplot2)
Plot <- qplot(cars$dist, cars$speed) +
  theme_bw()
print(Plot)
