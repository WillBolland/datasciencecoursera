# To extract muliple values from a data frame
# For example the data frame of Ozone, temperature, UV, Rain in each month
# want to find the mean rainfall for june when above 20 degrees and 34 Ozone

Junerain = subset(dataset, Ozone>30 & Temp>20)
mean(Junerain$rainfall, na.rm = TRUE)

#na.rm = TRUE removes any missing values (NA) from the column

#To see a the first elements of a vector use square brackets
x[1:10] #where you see the first 10 elements of vector x
x[x > 0] #to give all numbers of vector x > 0

#to remove all the NAs from a vector use the square brackets and ! (inverse)
y = x[!is.na(x)]

#or you can combine requests with &
x[!is.na(x) & x > 0]

#to ask for a subset of elements except a few you can use the minus sign
x[-c(2, 10)] #all elements except the 2nd and 10th

#to create a sequnce of numbers us seq()
seq(0, 10, by=0.5) seq(0, 10, length=30) #by is the increment and length is number of elements

#the identical() function tells you if two vectors are the same
identical(x, y)

#to create a matrix use the matrix() function. Matrices can only contain one class of data, data frames can have multiple
matrix(1:20, nrow = 4, ncol = 5)

#cbind() function combines columns 
cbind(data, data2)

#you can add column headings with colnames()
cnames <- c("X","Y", "Z")
colnames(mydata) <- cnames
