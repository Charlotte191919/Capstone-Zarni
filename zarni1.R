## first lesson using github 
library(tidyverse)
getwd()
# load data 
# We wil use the "analysis data" dataset that we created in a previous unit to help 
# us learn github.
My_Data <- read_csv("/Users/charlottehudek/Desktop/Capstone-Zarni/analysis_data.csv")

View(My_Data)
# Let-s rename the variable "safe" to "student_safety" 
My_Data$student_safety <- My_Data$safe
# now let's "push" this onto github 