library(tidyverse)

#Data Cleaning
t <- Titanic_dataset

t$Survived <- as.factor(t$Survived)
t$SibSp<- as.integer(t$SibSp) 
t$Ticket<- as.character(t$Ticket) 
t$Parch<- as.factor(t$Parch)
t$Sex<- as.factor(t$Sex) 
t$Pclass<- as.factor(t$Pclass)

#Calculating mean age in the Age column
mean_age <- mean(t$Age, na.rm = T)

#Replacing NA with column mean in mean_age
t[is.na(t$Age), "Age"] <- mean_age

# Replacing NA in msleep dataset (slightly different method)
library(tidyverse)

msleep

#First calculate mean:

mean_sleep_cycle <- mean(m$sleep_cycle, na.rm = T)
mean_brn_wt <- mean(m$brainwt, na.rm = T)
mean_slp_rm <- mean(m$sleep_rem, na.rm = T)

# Then replace NA:

m[is.na(m$sleep_cycle), "sleep_cycle"] <- mean(m$sleep_cycle, na.rm = T)
m[is.na(m$brainwt), "brainwt"] <- mean(m$brainwt, na.rm = T)
m[is.na(m$sleep_rem), "sleep_rem"] <- mean(m$sleep_rem, na.rm = T)
view(m)






