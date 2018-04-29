#CS Data

library(readxl)
csdata23 <- function(csx) {
  
CS1 <- read_excel("CS1.xlsx")

CS2 <- read_excel("CS2.xlsx")
cstrike1 <-(CS1$score)
cstrike2 <-(CS2$score)

g_range <- range(30, cstrike1, cstrike2)

plot(cstrike2,type="o", col="green",ylim=g_range, ylab = "Score", xlab = "Game Number (Out of 10)", main = "Counter-Strike Scores")
lines(cstrike1, type = "o", pch=22, lty=2, col="red")
axis(2, las=1, at=4*30:g_range[2])
legend(1, g_range[2], c("After Stim","Before Stim"), cex=0.6,
       col=c("green","red"), pch=21:22, lty=1:2)
}