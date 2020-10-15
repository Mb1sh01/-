FunctionName <- function(seed, a, b, c, d, f)
{
set.seed(seed)
x <- rf(a, b, c)
e <- rnorm(a, d, f)
y <- 5 - 3*x + e
median.result1 <- median(x)
median.result2 <- median(y)
layout(matrix(c(1, 2, 2, 1, 2, 2, 3, 4, 4),nrow = 3, byrow=T))
boxplot(y, pch = 0, cex = 1, range = 1.5, col = "green")
plot(x, y, abline(v=median.result1,h=median.result2,lty=2),pch = 21, cex = 1, col = "green")

plot(x, y, xlab = "", ylab = "", axes = F, col = "white")
boxplot(x, pch = 21, cex = 1, horizontal = TRUE, range = 1.5, col = "green")
}
