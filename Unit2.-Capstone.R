## Unit 1: Intro to R #### 

## Teacher note: Students will need to have the datasets loaded into a designated
## folder on their laptop first. 

##### SESSION GOALS 
## Functions you will learn:
## General Takeaways: 
# Understand the layout of R studio: the console window & the source window,
# Know how to run commands, learn some functions and create objects, and 
# get familiar with the layout of R studio, including the console window 
# and the source window. 
# Agenda: Introduction, 1. Setting working directory, 2. Installing packages
# 3. Downloading data 

##### INTRODUCTION 
## R is like a little pet robot. We have to talk to it in very specific ways 
# When we put a hashtag in front of text, R knows we are just talking to ourselves. 
# Using the hashtags is a way to make notes for yourself about what you are doing 
# If we don't have the hashtags, R is paying attention. 

#  How to run commands
# Option 1: command+enter
# Option 2: clicking the run button
# If we type a line of code and run it without hashtags, R will respond. See: 
2 + 3
# Writing the above line of code and running it caused R to respond below 
# in the "console." We see it replied "[1] 5  "
# This top left window I am typing in is called the "source" window. 


## R can do a lot of things. You can tell it to be a calculator 
# (like we just did above), to create a column of information, to pull 
# information from a website, or to create a map for you, among many other things
# For policy researchers, though, the most common thing is to have R assist 
# you with an external data set. So, that is what we will do first!
# The end goal of this session is to have a few data sets loaded into R

## There are a few things we have to do to prepare R to get a data set for us. 
# These things are useful for many projects and will be useful tools moving forward. 
# They will help us get more familiar with how R works. Here is this session's agenda: 
###  1. setting the working directory 
###        - setwd()
###        - getwd()
#           - c() 
###  2. Installing  packages 
###        - install.packages()
###        - library()
###  3. Downloading xlsx data, csv data, AND OTHER data types
###        - read_csv()
#         - read_xl() 
###        - View()
########################################################################

##### 1. Setting a Working Directory #####

# For R to find the data sets we wish to load, we have to give it really specific
# directions about where to look.The working directory is your set location
# for your R project. The internet says a working directory is "a file path on
# your computer that sets the default location of any files you read into R, 
# or save out of R" 
# It's like telling our pet robot to go grab us a book off our bookshelf.
# We can't just say "Go grab me Curious George"
# We have to be more specific, saying something like  "Go to my house, 
# go on the first floor, go through the second door, look to the left and 
# you will see the bookshelf. Get the book called Curious George.
# In this analogy, the bookshelf is where R now knows to look for things. 
# It also will save your projects in this bookshelf. There are other ways 
# besides a working directory to get data loaded into R, but the working directory 
# keeps everything very organized, and you will appreciate it later on. 

## I'm going to set my working directory to a folder on my laptop's desktop. 
# The folder is called Rprojects. 
# To set a working directory, we need to use the 'set working directory' function
# Functions are like verbs. They are the action. 
# In general, the way to tell R to do something is: 
# Function(ObjectTheFunctionisDoneTo, MoreSpecificsIfNeeded) 
# You are telling R to perform the function on the objects inside the parenthesis
# You will notice for all R code, you get more detailed as you go left to right.

# Now let's use our set working directory function. 
## function: setwd() 
## function syntax: setwd("FirstStepToReachDesignatedFolder/SecondStep../LastStep")
# The /'s are the computer's way of knowing you are telling it about a file path


setwd("/Users/charlottehudek/Desktop/Rprojects") 

## getwd() allows us to double check what the current directory is 
# (where R thinks it should go to look for files and store files)
## this helps us see that our setwd() command worked. 
getwd() 

 
##### 2. Installing Packages #####

## Packages are like apps for a phone. The phone comes with a few apps already 
# (like calendar, compass, camera, etc) that can perform some functions
# but most of the really useful functions require installing packages. 
# Some packages help with loading data, others might be 
# for creating visuals, while another package allows for more
# advanced statistical equations. Some packages can be downloaded 
# as a collection (it's like if you could go in your app store and download 
# the Social Media Collection which would automatically give you instagram, 
# tiktok, and twitter at once)

## There are a few really useful packages that we will download right away.
# The first one is called tidyverse. It is a collection of packages.
# here is a link for more about this collection of packages" https://www.tidyverse.org/packages/ 
# function: install.packages()
# function syntax: install.packages("NameofPackage")
install.packages("tidyverse") 

## Now tidyverse is downloaded to R. Once you've downloaded a package, 
# it is in R for life, but when you start a new project,
# you have to "reopen" it. This is sort of like having to reopen your 
# Instagram app after you've turned your phone off and back on. 
# To open a downloaded package we use the following:
# function: library(NameofPackage)  
#**notice we don't need the "" now that R knows the package. 
# logic of function: Our action/function is library, our object is our
# package name. 
## We are telling R: 1.ACTION/ FUNCTION: Go to my library and get 
# 2. OBJECT: xyz package
library(tidyverse) 

## On the lower right side, we see that R has a window for us to see the files, 
# plots, and packages we have asked it to know
# If we go to Packages, we now see tidyverse and it's associated packages
# are available. This lower right window of RStudio is sort of like google drive. 
# It keeps track of all the files, documents, and images that you have, 
# while the left side of RStudio (where this text is and the console below) 
# is like the individual google doc you are focused on. 

#Let's also download a package called "readxl". This package will allow us 
# to download different types of data later on.
install.packages("readxl")
library(readxl)

####### 3. Downloading Data ##########

## Data is stored in a variety of file types. 
## R can read in data prepared using Excel, SAS, Stata, SPSS and more. 
# Once R has the right packages, 
# It can read file types including: .csv, .xls, .xlsx, .txt , .tsv , .dat
# For this class, we will use .csv and .xlsx files.
# However, once you know how to load these file ypes, 
# You'll be able to google how to load other file types and actually understand 
# what the internet tells you. 

### Download .csv 
# We first want to make sure our .csv file is in  the folder our working 
# directory is set to. If it is, downloading is simple!
## function: read_csv()
## function syntax: read_csv("NameofDataSetinYourFolder.csv")
# in my Rprojects folder on my desktop (which you will recall is where my 
# working directory is set to) the dataset is called DOEData-Use.csv
read_csv("DOEData-Use.csv")

# When we run this, we see a lot of information about our dataset showing up 
# in the console. This is all good. 
# However, it is much easier for R if we give this dataset its own name in R. 
# We do this by turning our dataset into an "object." Essentially, we can 
# show R a lot of files, images, data, etc. but by turning them into an official 
# object with a name, we are formally introducing them to R and asking R to 
# remember them by name. Creating an object is done using the assignment operator
# "<-" You can think of it as IS. For example: we can have a list of numbers: 
# (1,2,3). But to ensure R knows this list, we need to assign it a name. We do 
# this by:
MyList <- c(1,2,3)
# In The above example, we are telling R that the words MyList now officially 
# represents the list of numbers 1,2,3. So if we ever type MyList, R knows 
# we mean 1,2,3. Also, you'll notice we put a c in front of our parenthesis. 
# The c stands for combine, and we will see it more later on. I like to think of 
# it as the handle of a bag of things you are packing up to give R. We just gave 
# R a bag full of 1 , 2, and 3 and told R to combine the contents of that bag 
# into an object named MyList. 

MyList 
#notice now when we run Mylist, R replies 1 2 3 in the console. 

# So, let's give our dataset an official name for R to remember it by. 
# Let's assign our dataset to a name,  thus making it an official object in R. 
# We can call it DOEData-Use or give it a different name. Let's call it
#  DOEdata because that is easier to type
DOEdata <- read_csv("DOEData-Use.csv")

# A very useful command for datasets is View(). This command will open up a new 
# tab for your dataset and allow you to view your data more clearly 
# function: View()
#function syntax: View(DataSet)
View(DOEdata)

# Now, let's load in one more dataset. This one is an excel spreadsheet. 
# It is also in my folder Rprojects that my directory is set to.
# The file is saved in the folder as CensusDemographicsNTA.xlsx
# To load it, we use the function read_xl which is part of the package we 
# just loaded earlier. 
# function: read_excel()
# function syntax: readxl("myfilename.xlsx)
read_excel("CensusDemographicsNTA.xlsx")
# Let's give this data set a name too. We will call it CensusData 
Censusdata <- read_excel("CensusDemographicsNTA.xlsx")

# Now we can look at this data set with View()
View(Censusdata)

# We will read in one more dataset. Note, we don't have to read in our data 
# and then name it. We can do these things all in one go. That's what we will do
# for this third dataset  
InsideData <- read_csv("InsideSchoolsData-Use.csv")
View(InsideData)

### Conclusion: Now we have our data sets uploaded. We can save this code 
# for future use by clicking File, Save (just like a word document)

#### POSSIBLE HOMEWORK: 
# Could load in another dataset. Perhaps a .dat file 
# Download the package "haven". And load it into your library 
# Syntax: dataframe <- read.dat( “file.dat” ) Load the dataset, 
# give it a new name, and View it. 
# Also load the census data. 

