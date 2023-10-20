## Calculations for additional information regarding the data (Table S1 and S2)

## Load libraries
library(data.table)
library(ggplot2)
library(outliers)
library(car)
library(rcompanion)
library(FSA)
library(dplyr)

## Table S2

# Import the data
df <- read.table("data_for_stats_minerals_FINAL.txt", sep="\t", header=T, stringsAsFactors = T, check.names = FALSE)

# calculate medians

medians <- tapply(df$Value, list(df$Mineral, df$Name, df$Extraction), median)

medians_table <- as.data.frame(round(medians, 2))

# calculate Interquartile range

iqr <- tapply(df$Value, list(df$Mineral, df$Name, df$Extraction), IQR)

iqr_table <- as.data.frame(round(iqr, 2))

## Table S1 - unbound DNA

df <- read.table("data_for_stats_unbound_minerals_FINAL.txt", sep="\t", header=T, stringsAsFactors = T, check.names = FALSE)

# calculate means

means <- tapply(df$Value, list(df$Mineral, df$Buffer, df$Extraction), mean)

means_table <- as.data.frame(round(means, 2))

# calculate SD

stdev <- tapply(df$Value, list(df$Mineral, df$Buffer, df$Extraction), sd)

sd_table <- as.data.frame(round(stdev, 2))