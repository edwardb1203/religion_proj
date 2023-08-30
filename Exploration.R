library(countrycode)
library(dpl)
setwd("C:/Users/edbak/Desktop/Religion Side Project")

data <- read.csv('WRP national data.csv')

# clean our data and add country names, end up with 88 unique countries
data <- data %>%
  mutate(country = countrycode(name,origin='iso3c',destination='country.name')) %>%
  filter(!is.na(country))
