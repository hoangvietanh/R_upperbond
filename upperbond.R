library(readxl)
library(concaveman)
#coords <- na.omit(read_xls("RCodes.xls"))
concavehull <- as.data.frame(concaveman::concaveman(as.matrix(coords)))
upperbound <- concavehull[which.min(concavehull$V1):which.max(concavehull$V1), ]
plot(coords)
points(upperbound, cex = 1.5, col = "dark red")
