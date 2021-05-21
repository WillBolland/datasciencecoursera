# To extract muliple values from a data frame
# For example the data frame of Ozone, temperature, UV, Rain in each month
# want to find the mean rainfall for june when above 20 degrees and 34 Ozone

Junerain = subset(dataset, Ozone>30 & Temp>20)
mean(Junerain$rainfall, na.rm = TRUE)

#na.rm = TRUE removes any missing values (NA) from the column

