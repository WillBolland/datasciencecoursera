#pch: the plotting symbol
#lty: the line type (lty = 2 is a dashed line)
#col: plotting colour
#lwd: line width
#ylab: y axis label
#xlab: x axis label
#las: orientation of the axis on the plot
#bg: background colours
#mar: margin size
#oma: outer margin size
#mfrow: number of plots per row
#mfcol: number of plots per column

#**Plotting functions**
#plot: make a scatterplot
#lines: add lines
#points: add points
#text: add text
#title: add title
#mtext: add text to the margin
#axis: adding axis label/ticks
legend("topright", pch = 1 , col = c("red", "blue"), legend = c("May", "Other months")
abline(model, lwd = 2)

par(mfrow = c(1, 2), mar = c(4, 6, 3, 3), oma = c(1, 0, 2, 0))
with(airquality, {
  plot(Wind, Month, pch = 2, main = "Wind and Month")
  plot(Solar.R, Wind, pch = 2, main = "Solar and Wind")
  mtext("London climate", outer = TRUE)
})

#lm: makes a linear model between variables
#abline(linearmodelname): adds the line for the linear model

#**making a pdf**
pdf(file = "pdfname")
with(data, plot(variable1, variable 2))
title(main = "insertitle")
dev.off()
#or
dev.copy2pdf()

#the command rug() adds a density plot below a histogram
#the command break() separates the histogram into a number of bars

boxplot(pm25 ~ region, data = pollution, col = "red")
hist(subset(pollution, region == "west")$pm25, col = "green")
with(pollution, plot(latitude, pm25)) #first argument is x axis and second is y axis

#col can be set to a variable eg. col = pollution$region

#Regression lines in lattice
xyplot(Ozone ~ Wind | Month, data = airquality, panel = function(x, y, ...){
  panel.xyplot(x, y, ...)
  panel.lmline(x, y, col = 2)
})

#ggplot with a geom
qplot(displ, hwy, data = mpg, geom = c("point", "smooth")) #points plot the points and smooth makes the line smooth
qplot(hwy, data = mpg, geom = "density", colour = manufacturer) # density plots split by car manufacturer

#ggplot with fill arguement
qplot(hwy, data = mpg, fill = drv) #colour fills the histogram depending on the variable
qplot(hwy, data = mpg, facets = drv~., binwidth = 2) #if there's too many colours and you want individual plots
# facets variable takes a format with two variables and splits them by separating them by a "~" the left is the columns and the right is the rows. No vairable for the rows so use "."

qplot(log(hwy), log(displ), data = mpg, facets =class~.) + geom_smooth(method = "lm", se = FALSE) + theme_bw(base_family= "Avenir")
qplot(log(hwy), log(displ), data = mpg, facets =class~.) + geom_smooth() #if there's lots of noise in the smooth line then you can use a linear model with "lm"
qplot(log(hwy), log(displ), data = mpg, facets =class~trans) + geom_smooth(method = "lm")

#Components of ggplot: a data frame, aesthetic mappings, geoms, facets, stats, scales, coordinate system
#Functions for annotating: labs(x = ""), labs(y = ""), labs(title = ""), ggtitle(), theme(), theme_gray(), theme_bw(), theme_bw(base_family = "Times")
#alpha 1/2 will make points transparent
#geom_smooth(method = "lm", se = FALSE, colour = "red) se=FALSE will remove the gray 95% confidence interval levels from the line
#aes() assigns colour to a data variable i.e. a value of a variable
qplot(log(hwy), log(displ), data = mpg, facets =class~.) + geom_point(aes(colour = year), size = 4, alpha = 1/2)

#setting axis limits in ggplot 
#normal ylim(-3, 3) functions will remove the outliers however the coord_cartesian(ylim = c(-3, 3)) will keep the outlier
#cut() can split a continuous variable into ranges to be plot as a catagorical variable e.g height split into 1-1.5, 1.5-2.0, 2.0-2.5

#add boxplots using geom
qplot(drv, hwy, data = mpg, geom = "boxplot")

#setting margins = TRUE will add an extra column and row to the factors of the totals

#Commands from the diamonds data work
g <- ggplot(data = diamonds, aes(depth, price))
g + geom_point(alpha = 1/3)
cutpoints <- quantile(diamonds$carat, seq(0, 1, length = 4), na.rm = TRUE) #splitting the carat variable into 3 pockets
diamonds$car2 <- cut(diamonds$carat, cutpoints) #adding the new variable into the data frame
g <- ggplot(data = diamonds, aes(depth, price)) # resetting to add the new variable to g
g + geom_point(alpha = 1/3) + facet_grid(cut ~ car2)
g + geom_point(alpha = 1/3) + facet_grid(cut ~ car2) + geom_smooth(method = "lm", size = 3, color = "pink")
ggplot(data = diamonds, aes(carat, price)) + geom_boxplot() + facet_grid(.~cut)





