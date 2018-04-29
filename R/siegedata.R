library(readxl)
siegedata23 <- function(siegex) {
  
Siege1 <- read_excel("Siege1.xlsx")
Siege2 <- read_excel("Siege2.xlsx")

siege1 <-(Siege1$score)
siege2 <-(Siege2$score)
g_range2 <- range(1000, siege1, siege2)

plot(siege1,type="o", col="green",ylim=g_range2,ylab = "Score", xlab = "Game Number (Out of 10)", main = "Rainbow Six: Siege Scores")
lines(siege2, type = "o", pch=22, lty=2, col="red")
legend(1, g_range2[2], c("After Stim","Before Stim"), cex=0.6,
       col=c("green","red"), pch=21:22, lty=1:2)

}