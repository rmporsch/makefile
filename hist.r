#!/usr/bin/env Rscript

#################################
#  Plots Temperature Histogram  #
#################################
source("load_packages.r")
library(tidyverse)
dat <- read.csv("formated_data.csv")

ggp <- dat %>%
  ggplot(., aes(x=TempC)) + geom_histogram()

ggsave("histogram.png", ggp)
