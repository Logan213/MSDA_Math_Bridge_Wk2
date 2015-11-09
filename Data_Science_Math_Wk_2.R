# Logan Thomson
# Data Science Math - Week 2 Assignment

# Intro to Statistics, Chapter 5, 1-15

# 1a. What is the probability of rolling a pair of dice and 
# obtaining a total score of 9 or more?
Pair of dice = 36 possible outcomes; 8 outcomes >= 9
(8 / 36) = (2 / 9)

# 1b. What is the probability of rolling a pair of dice and 
# obtaining a total score of 7?
Relevant Outcomes = (1, 6), (2, 5), (3, 4), (4, 3), (5, 2), (6, 1)
P(7 Total) = (6 /36) = (1 / 6)

# 2a. Both pieces are dotted?
(1 / 2) * (1 / 2) = (1 /4)

# 2b. The first piece is black and the second piece is dotted?
(1 / 3) * (1 / 2) = (1 / 6)

# 2c. One piece is black and one piece is striped?
(1 / 3) * (1 / 6) = (1 / 18)

# A card is drawn at random from a deck. 
# 3a. What is the probability that it is an ace or a king?
P(Ace or King) = P(Ace) + P(King) - P(Ace and King)
(4 / 52) + (4 / 52) - 0
(8 / 52) = (2 / 13)

# 3b. What is the probability that it is either a red card or a black card?
P(Red or Black) = P(Red) + P(Black) - P(Red and Black)
(26 / 52) + (26 / 52) - 0 = 1

# 4. The probability that you will win a game is 0.45. 
# a. If you play the game 80 times, what is the most likely number of wins?
The most likely number of wins is 36.

# b. What are the mean and standard deviation of a binomial distribution
# with π = 0.45 and N = 80? 
Mean = 80 * .45 = 36
Variance = (80 * .45) * (1 - .45) = 36 * .55 = 19.8

# 5. A fair coin is flipped 9 times. What is the probability of getting exactly 6 heads?
dbinom(6, 9, .5) = 0.1640625

# 6. When Susan and Jessica play a card game, Susan wins 60% of the time. 
# If they play 9 games, what is the probability that Jessica will have won more games 
# than Susan?
sum(dbinom(5:9, 9, .4)) = 0.2665677

# 7.You flip a coin three times. 
# a. What is the probability of getting heads on only one of your flips?
P(Heads on 1 of 3 flips) = (HTT, THT, TTH) = (3 / 8)

# b. What is the probability of getting heads on at least one flip? 
pbinom(2, 3, .5) = 0.875

# 8. A test correctly identifies a disease in 95% of people who have it. It correctly 
# identifies no disease in 94% of people who do not have it. In the population, 3% of 
# the people have the disease. What is the probability that you have the disease if you
# tested positive?
miss rate = .05, false positive = .06
(.03 * .95) / (.03 * .95) + (.06 * .97) = .3287197

# 9. A jar contains 10 blue marbles, 5 red marbles, 4 green marbles, and 1 yellow 
# marble. Two marbles are chosen (without replacement). 
# a) What is the probability that one will be green and the other red?
P(1 green and 1 red) = (4 / 20) * (5 / 19) = 0.05263158

# b) What is the probability that one will be blue and the other yellow?
P(1 blue and 1 yellow) = (1 / 2) * (1 / 19) = 0.02631579

# 10. You roll a fair die five times, and you get a 6 each time. What is the probability
# that you get a 6 on the next roll?
(1 / 6) = 0.1666667 #Previous results do not affect future probability

# 11. You win a game if you roll a die and get a 2 or a 5. You play this game 60 times.
# a) What is the probability that you win between 5 and 10 times (inclusive)?
sum(dbinom(5:10, 60, (1/3))) = 0.003167526

# b) What is the probability that you will win the game at least 15 times?
sum(dbinom(15:60, 60, (1/3))) = 0.937041

# c) What is the probability that you will win the game at least 40 times?
sum(dbinom(40:60, 60, (1/3))) = 1.36176e-07

# d) What is the most likely number of wins.
20 wins

# e) What is the probability of obtaining the number of wins in d? 
dbinom(20, 60, (1/3)) = 0.1087251

# 12. In a baseball game, Tommy gets a hit 30% of the time when facing this pitcher.
# Joey gets a hit 25% of the time. They are both coming up to bat this inning.
# a) What is the probability that Joey or Tommy (but not both) will get a hit?
P(Tommy or Joey Hits) = .3 + .25 - (.3 * .25 ) = .55 - .075 = .475

# b) What is the probability that neither player gets a hit?
P(Neither Hits) = P(Tommy Miss) * P(Joey Miss) = .7 * .75 = .525

# c) What is the probability that they both get a hit?
P(Both Hit) = .3 * .25 = .075

# 13. An unfair coin has a probability of coming up heads of 0.65. The coin is flipped
# 50 times. What is the probability it will come up heads 25 or fewer times? 
P(Heads) = .65, N = 50
pbinom(25, 50, .65) = .02066839

# 14. You draw two cards from a deck, 
# a) What is the probability that both of them are face cards (king, queen, or jack)?
P(2 Face Cards) = (12 / 52) * (11 / 51) = 0.04977376

# b) What is the probability that you draw two cards from a deck and both are hearts?
P(2 Hearts) = (1 / 4) * (12 / 51) = .05882353

#15. You are more likely to get a pattern of HTHHHTHTTH than HHHHHHHHTT when you flip 
# a coin 10 times.
False; All patterns have the same probability.  The number of heads or tails within 
the pattern have different probabilities.