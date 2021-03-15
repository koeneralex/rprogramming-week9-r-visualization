library(ggplot2)
library(tidyverse)
library(reshape2)
library(lattice)

# Data wrangling -------------
df1 <- read.csv("GoldSilver.csv")
df1$X <- as.Date(df1$X)
df1$date <- df1$X
df1 <- df1[,-1]

# Ggplot2 --------------------
ggplot(df1, aes(x=date)) +
  geom_line(color="red",aes(y=gold)) +
  geom_line(aes(y=silver))

## Base Plot -----------------
plot(x=df1$date, y=df1$silver, type = "l", xlab = "Year", ylab = "Silver Price")+
lines(x=df1$date, y=df1$gold, type = "l", xlab = "Year", ylab = "Gold Price", col="red")

## Lattice -------------------
xyplot(gold+silver~date, data = df1, type="l")

## Analysis/Conclusion -------

  # All graphs feature gold and silver prices 1977-2012.
  # Ggplot is best for displaying complicated data due to its wide range of options and features.
  # Lattice is best for quick and medium simple graphs.
  # Base R plot is best for very simple and quick visualizations for understanding data.



