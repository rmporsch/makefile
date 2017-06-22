#!/usr/bin/env Rscript
library(tidyverse)
source("load_packages.r")

dat <- read.csv("data.csv")

# Converts Fahrenheit to Celsius
Fahren_Celsius <- function (x) {
  return((x-32)/1.8)
}

dat <- dat %>%
  mutate(TempC = Fahren_Celsius(Temp))

write.csv(dat, "formated_data.csv")
