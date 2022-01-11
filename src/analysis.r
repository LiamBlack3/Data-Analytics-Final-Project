### Name: Liam Black, Nathan Loria
# Exploring Global Public Health Indicators

# Date: 13 December 2021

# Final project code

rm(list = ls())
graphics.off()
cat("\014")

# install.packages("ggplot2")
# install.packages("psych")
library(ggplot2)
library(psych)

#Research Questions

#1. What is the relationship between knowledge of contraceptives for men, and general fertility rates among women?(pertaining to 5 African countries.)

myFile  <- file.choose()
myData <- read.csv(myFile)
# choose the file and load data set into R

mod <- lm(data = myData, male_contraception_knowledge ~ fertility_rate)
summary(mod)

ggplot(myData) +
  geom_point(aes(male_contraception_knowledge, fertility_rate)) +
  geom_smooth(aes(male_contraception_knowledge, fertility_rate)) +
  xlab("Male Knowledge of Contraceptives") +
  ylab("Average Fertility Rate")

pairs.panels(myData)

#2. Is there a correlation between number of births and Percentage of children born in multiple risk categories, if so why?

myFile  <- file.choose()
myData <- read.csv(myFile)
# choose the file and load data set into R

mod <- lm(data = myData, forty_fortynine_mean_births ~ multiple_risk_birth_percentage)
summary(mod)

ggplot(myData) +
  geom_point(aes(forty_fortynine_mean_births, multiple_risk_birth_percentage)) +
  geom_smooth(aes(forty_fortynine_mean_births, multiple_risk_birth_percentage)) +
  xlab("Average Number of Children Born From Women Aged 40-49") +
  ylab("% of Children Born in Multiple Risk Categories")

pairs.panels(myData)

#3. How does Percentage of households with two rooms used for sleeping have an effect on Percentage of live births in the five (or three) years preceding the survey where the size of the child at birth was smaller than average

myFile  <- file.choose()
myData <- read.csv(myFile)
# choose the file and load data set into R

mod <- lm(data = myData, two_room_percentage ~ smaller_live_births)
summary(mod)

ggplot(myData) +
  geom_point(aes(two_room_percentage, smaller_live_births)) +
  geom_smooth(aes(two_room_percentage, smaller_live_births)) +
  xlab("% of Households With Two Rooms for Sleeping") +
  ylab("% of Children Born Smaller Than Average")

pairs.panels(myData)

#4.What type of effect does Percentage of men with access to newspaper, television and have on Percentage of men who smoked 5-9 cigarettes in preceding 24 hours

myFile  <- file.choose()
myData <- read.csv(myFile)
# choose the file and load data set into R

mod <- lm(data = myData, three_media_percentage_male ~ five_to_nine_cigarette_percentage_male)
summary(mod)

ggplot(myData) +
  geom_point(aes(three_media_percentage_male, five_to_nine_cigarette_percentage_male)) +
  geom_smooth(aes(three_media_percentage_male, five_to_nine_cigarette_percentage_male)) +
  xlab("% of Men With Extensive Media Access") +
  ylab("% of Men Who Smoked 5-9 Cigarettes in Preceeding Day")

pairs.panels(myData)
