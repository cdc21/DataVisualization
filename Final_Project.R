knitr::opts_chunk$set(echo = TRUE)

#Setting Working Directory
knitr::opts_knit$set(root.dir = "~/Desktop/Final Project/")
getwd()

#Install and Intialize Packages
library(tidyverse)
library(dplyr)

#Read CSV
setwd("~/Desktop/Final Project/")
NYC <-read.csv("NYC_Property_Sales_Data.csv")
NYC

#Summary
summary(NYC)

#Cleaning
NYC <- NYC %>% 
  mutate(SALE.PRICE=as.numeric(SALE.PRICE))
NYC <- NYC %>% 
  mutate(SALE.DATE=as.Date(SALE.DATE))
NYC<- NYC %>%
  select(c("BOROUGH","NEIGHBORHOOD","SALE.PRICE","SALE.DATE"))
NYC<- NYC %>% drop_na()


knitr::spin("Final_Project.R", knit= FALSE)






