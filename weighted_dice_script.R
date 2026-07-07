# Weighted Dice in R
# Based on "Hands-On Programming with R" (Garrett Grolemund)
# Project 1: https://rstudio-education.github.io/hopr/project-1-weighted-dice.html

# Simulates rolling a pair of dice, visualizes the distribution
# of results with ggplot2, then "weights" one die so that it
# rolls a 6 more often, and compares the resulting distribution.

# Load into library
library(ggplot2)

# 1. A fair roll of two six-sided dice

roll <- function() {
  die <- 1:6
  dice <- sample(x = die, size = 2, replace = TRUE)
  sum(dice)
}


# 2. Simulate many fair rolls and plot the distribution
# (qplot is deprecated, used ggplot instead)

rolls <- replicate(n = 10000, expr = roll())

ggplot(data = data.frame(x = rolls), mapping = aes(x = rolls)) +
  geom_histogram(binwidth = 1)

# The frequency of sums is roughly normally distributed, since
# the probability of rolling any number on a single fair die is
# 1/6, and summing two dice averages out to a bell-shaped curve.

# 3. Weight one die so 6 comes up more often

# If the probability of rolling a 6 is increased on one die, the
# sum of the two dice will trend higher on average.
# New probabilities: P(1) = P(2) = P(3) = P(4) = P(5) = 1/8, P(6) = 3/8

weighted_roll <- function() {
  die <- 1:6
  dice <- sample(x = die, size = 2, replace = TRUE,
                 prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}

weighted_rolls <- replicate(10000, weighted_roll())

ggplot(data = data.frame(x = weighted_rolls), mapping = aes(x = weighted_rolls)) +
  geom_histogram(binwidth = 1)

# The two distributions can now be compared.
