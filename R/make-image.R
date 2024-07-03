library(ggplot2)

ggplot(mtcars) +
  geom_histogram(aes(x = mpg))

ggsave("images/mtcars-histogram.png")
