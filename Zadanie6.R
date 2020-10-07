png("plot-ex06.png", width=600)
par(mfrow = c(2, 1))
set.seed(4)
x <- rf(n = 300, df1 = 3, df2 = 112)
e <- rnorm(300, 0, 4)
hist(x, freq = F, col = "orange")
curve(rf(x, mean = 18, sd = 2), col = "blue", lwd = 0.25, add = T) #гладкая линия
lines(density(x), col = "cyan", lwd = 1) #добавляем плотность фактического распределения x
hist(e, freq = F, col = "burlywood1")
curve(dnorm(x, mean = 0, sd = 4), col = "red", lwd = 2, add = T)
lines(density(e), col = "darkolivegreen1", lwd = 3)
par(mfrow = c(1, 1))
