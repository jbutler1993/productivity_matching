## Libraries

library(dplyr)
library(readxl)
library(writexl)

## Load csvs in to RStudio

cpsg <- read.csv("C:/Users/jb000299/Downloads/20231221_sfi_2023.csv") # CPSG Data
cplg_roundtwo <- read_excel("C:/Users/jb000299/Downloads/Additional CPLG data.xlsx") # CPLG Data
fetf_roundone <- read_excel("C:/Users/jb000299/Downloads/FETF R1.xlsx") # FETF Round One Data
fetf_roundtwo <- read_excel("C:/Users/jb000299/Downloads/FETF R2.xlsx") # FETF Round Two Data
ftf_roundone <- read_excel("C:/Users/jb000299/Downloads/ftf round 1.xlsx") # FTF Round One Data

## Create a master list of all available SBIs

cpsg_sbi <- cpsg$sbi

cplg_roundtwo_sbi <- cplg_roundtwo$sbi

fetf_roundone_sbi$sbi <- fetf_roundone$sbi

fetf_roundtwo_sbi <- fetf_roundtwo$sbi

ftf_roundone_sbi <- ftf_roundone$sbi

productivity_sbis <- rbind(cplg_roundtwo, fetf_roundone, fetf_roundtwo, ftf_roundone)

productivity_sbis <- distinct(productivity_sbis)

## Export csv

write_xlsx(productivity_sbis, path = "productivity.xlsx")
