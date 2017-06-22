#!/usr/bin/env Rscript

####################################
#  Installs Packages If necessary  #
####################################

list.of.packages <- c("tidyverse", "rmarkdown")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
