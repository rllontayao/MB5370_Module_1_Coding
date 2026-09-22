#------------------------------------#
# MB5370: Techniques in Marine Science 1
# Programming Fundamentals
# < YOUR NAME HERE >
# <  DATE >

#------------------------------------#
# Workshop 01. Introduction ####

# Basic arithmetic (e.g. wrangling sea surface temperatures)
24.5 + 1.2
32.0 / 4
#Comment ngani

# R syntax and working in scripts ####
# This section introduces us to R by running simple calculations inside a script.

 2 + 1
1:30
6*+2
6/2

#-----------------------------------#
#BUILT IN FUNCTIONS NGANIIII
years_old <- 25.7
round(years_old) # rounds up
floor(years_old) # rounds down

years_old <- 25.76589
round (years_old, 2) # comma, after the object to specify argumen[1] 25.76
?round # go to help
args(round) # use args in the Console
round (years_old,digits=0)# number after comma how many deci points
round (years_old,digits=1)
round (years_old,digits=2)
round (years_old,digits=3)
#floor (years_old,digits=1) #args does not work for floor
#floor (years_old)
#--------------------------------------#
#OBJECTS AND ASSIGNMENTS NGANIIII!!!

## This section focuses on understanding how data is stored in R and why that matters.
#How to use <- whatever is on the right of arrow will be inserted to the variable name u want ex. rowwyn<-1

#single value
coral_count <- 42 

#vectors
fish_lengths <- c(124,152,98,221,146)

#<- we can say this symbol as "gets that" ex. coral_count<-42 means coral_count "gets that" 42
coral_count + 1
coral_count + coral_count
coral_count * coral_count
#coral_count * coral_Count #Cases Matter nganiii

Coral_Count <- 1
coral_count + Coral_Count

#Some object naming roles cant start with numbersorsymbols.
#01_age <- 25 # starts with a number
#!_age <- 25 # no special symbols
age01 <- 25 #can work with letters first then number
#coral count <- 25 #no spaces nganiii

`coral count` <- 25 # spaces used but with back ticks
# can work like this but can be confusing (avoid)
#--------------------------------------------------------#
#DEBUGGING CODE
#Can use google or AI to troubleshoot code just copy error code paste and search

#Syntax debug
quadrat_area_m2 <- 0.25 #0.25 gets in quadrat_area (Y)
number_of_quadrats <- 16 #16 gets in number_of..(Y)
total_area_surveyed <- quadrat_area_m2 * number_of_quadrats #(Y)
#print(total_area_surveyd) #???nanniiii
print(total_area_surveyed) #above print code lacks an e after y (Y)

#---------------------------------------------------------#
#PACKAGE NGANIII!!!
#Packages = software that other people have written like stat analysis (CAR), or ways of plotting (ggplot)
#Packages are peer reviewed
#when installing packages better to run it in console not on script because it might do it over and over and previous versions may be distrupted
#INSTALL PACKAGES IN CONSOLE NGANI!!! = install.packages("tidyverse")

#dont need to reinstall again on same computer??
#after installing we need to load it to use its packages

library(tidyverse) #this loads it into current session
#tidy verse is the family of packages but you can load only single packages from it like dplyr or ggplot
library(dplyr)
library(ggplot2)
#you can see these in the console
#can check if loaded by (.packages())
#---------------------------------------------------#
#DATA TYPES NGANI
#Numeric (numeric / double): Continuous decimals (e.g., pH levels: 8.1, 7.95).
#Integer (integer): Whole numbers (e.g., count of sea turtles spotted: 5L).
#Character (character): Text strings enclosed in quotation marks (e.g., species name: "Acanthaster planci").
#Logical (logical): Boolean values that are either TRUE or FALSE (e.g., Bleaching observed: TRUE).

# Assign variable values
site_name <- "Heron_Island" #character
transect_depth_m <- 12.5 #numeric
bleaching_present <- TRUE #Logical

# Check using function class() what category?
class(site_name)
class(transect_depth_m)
class(bleaching_present)

# Check using function str() what item?
str(site_name)
str(transect_depth_m)
str(bleaching_present)


#Organizing DataAnalysis>Techniques>Workshop1>code,data,output,RProj

# Tracking the age of an old-growth Porites coral colony
years_old <- 25.765

# Clean this up for our summary report
#round(years_olld, 2)
round(years_old, 2) #Y

# Make variables
years_old <- 25.765 #gets in
rounded_age <- round(years_old, 2) #the rounded years_old with 2 decimal places gets in

# Combine text and data variables
paste("Average colony age is",rounded_age, "years old") 

#I want one decimal point
years_old <- 25.765
rounded_age <- round(years_old, 1)
paste("Average colony age is",rounded_age, "years old") 

#A vector is a collection of elements that are most commonly of the type character, numeric, integer, logical.
# to make vector name <- c("x", "y", "z")

coral_spp <- c("Porites", "Acropora", "Montastrea")


# experiment  coordinates<-c("x",years_old,3)

vector <- c("Acropora", 27.5, TRUE) #if you ask class it will make it as characters
lista <- list("Acropora", 27.5, "PORITES") #LIST values can be of different types
#can call out elements in list or vectors with vector[[1]]

#-------------------------------------------#
#DATA FRAMES and TIBBLES
#Data frames are 2 dimensional like tables

my_dataframe <- data.frame (no = c(1,2,3), Name = c("Plectropomus", "Scarus", "Pomacentrus"), case = c(TRUE, FALSE, TRUE)) #making the data frame
#look at format u can add the column name before = sign
my_dataframe #print my data frame
str (my_dataframe) #categories my data frame

my_dataframe$no = as.factor(my_dataframe$no)
str (my_dataframe)

#NEVER USE setwd because if you share they will not ahve same location

