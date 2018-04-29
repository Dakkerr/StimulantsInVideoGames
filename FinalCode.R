#Please run all lines using Ctrl+Shift+Enter
library(readxl)
CS1 <- read_excel("CS1.xlsx")

library(readxl)
CS2 <- read_excel("CS2.xlsx")

library(readxl)
Siege1 <- read_excel("Siege1.xlsx")

library(readxl)
Siege2 <- read_excel("Siege2.xlsx")



cstrike1 <-(CS1$score)
cstrike2 <-(CS2$score)
siege1 <-(Siege1$score)
siege2 <-(Siege2$score)
g_range <- range(30, cstrike1, cstrike2)
g_range2 <- range(1000, siege1, siege2)

plot(cstrike2,type="o", col="green",ylim=g_range, ylab = "Score", xlab = "Game Number (Out of 10)", main = "Counter-Strike Scores")
lines(cstrike1, type = "o", pch=22, lty=2, col="red")
axis(2, las=1, at=4*30:g_range[2])
legend(1, g_range[2], c("After Stim","Before Stim"), cex=0.6,
       col=c("green","red"), pch=21:22, lty=1:2);


plot(siege1,type="o", col="green",ylim=g_range2,ylab = "Score", xlab = "Game Number (Out of 10)", main = "Rainbow Six: Siege Scores")
lines(siege2, type = "o", pch=22, lty=2, col="red")
legend(1, g_range2[2], c("After Stim","Before Stim"), cex=0.6,
       col=c("green","red"), pch=21:22, lty=1:2)
