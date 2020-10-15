FunctionHist <- function(seed, a, b, c, d, f)
{
par(mfrow = c(2, 1))
set.seed(seed)
x <- rf(a, b, c)
e <- rnorm(a, d, f)
hist(x, freq = F, col = "orange")
curve(dnorm(x, mean = mean(x), sd = sd(x)),col = "darkblue", lwd = 2, add = T)
lines(density(x), col = "cyan", lwd = 1) 
hist(e, freq = F, col = "burlywood1")
curve(dnorm(x, mean = 0, sd = 4), col = "red", lwd = 2, add = T)
lines(density(e), col = "darkolivegreen1", lwd = 3)
par(mfrow = c(1, 1))
raz_x <- max(x) - min(x)
raz_e <- max(e) - min(e)
return(data.frame('Razmah variacii x' = raz_x, 'Razmah variacii E' = raz_e))
}

