companies_finances <- read.csv("import/companies-finances.csv", h = TRUE)

spend <- companies_finances$Spend
revenue <- companies_finances$Revenue

#xbar <- mean(spend)
#sx <- sd(spend)

#ybar <- mean(revenue)
#sy <- sd(revenue)

#r <- cor(spend, revenue)
#n <- length(spend)

#betahat1 <- sum((spend - xbar) * (revenue - ybar)) / sum((spend - xbar)^2)
#betahat0 <- ybar - betahat1 * xbar

#yhat <- betahat0 + spend * betahat1

#errors <- revenue - yhat
#s_errors <- sqrt(sum(errors^2) / (n - 2))

#s_xx <- var(spend) * (n - 1)

#se_betahat1 <- s_errors / sqrt(s_xx)
#se_betahat0 <- s_errors * sqrt(1 / n + xbar^2 / s_xx)

linear_model <- lm(revenue ~ spend)

pdf("export/regression-diagnostic-plots-with-leverage-point.pdf")

par(mfrow = c(2, 2))

plot(linear_model)

dev.off()

linear_model <- lm(revenue[-257] ~ spend[-257])

predict(linear_model, data.frame(spend = 500000), interval = "predict")
predict(linear_model, data.frame(spend = 500000), interval = "confidence")

predict(linear_model, data.frame(spend = 700000), interval = "predict")
predict(linear_model, data.frame(spend = 700000), interval = "confidence")

pdf("export/regression-diagnostic-plots-without-leverage-point.pdf")

par(mfrow = c(2, 2))

plot(linear_model)

dev.off()
