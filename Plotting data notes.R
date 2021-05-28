#pch: the plotting symbol
#lty: the line type
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