# weighted_dice_in_R

An R script that simulates rolling a pair of dice, visualizes the
distribution of results, then "weights" one die to roll 6 more often
and compares the two distributions. Based on Project 1 of [Hands-On
Programming with R](https://rstudio-education.github.io/hopr/project-1-weighted-dice.html) by Garrett Grolemund:


# What it does:
1. Defines roll(), which simulates rolling two fair six-sided dice
   and returns their sum.

2. Uses replicate() to simulate 10,000 fair rolls, then plots the
   resulting distribution with ggplot2's geom_histogram(). The
   result should look roughly bell-shaped (normally distributed),
   since sums near 7 are more likely than sums near 2 or 12.

3. Defines weighted_roll(), which simulates the same two dice, but
   loads the probability so 6 comes up more often on one die
   (P(6) = 3/8, P(1..5) = 1/8 each instead of 1/6 each).

4. Simulates 10,000 weighted rolls and plots that distribution for
   comparison -- it should be shifted noticeably higher than the
   fair-dice distribution.

# How to run:
1. Install ggplot2 in R or RStudio.

         install.packages("ggplot2")
   
2. Source "weighted_dice" in R or RStudio.
