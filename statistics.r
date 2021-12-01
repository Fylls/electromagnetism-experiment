# Data
d = c(1, 2, 3, 4, 5, 6, 7, 8) / 1000
v_exp = c(10, 15, 20, 22, 24, 25, 26, 27)

# Linear regression
model = lm(formula = v_exp ~ d)

# Residuals
res = resid(model)

# Residual VS Fitted plot
plot(fitted(model), res)
abline(0,0)

# Shapiro-Wilk
shapiro.test(v_exp)
shapiro.test(res)

# QQ-plot 
qqnorm(v_exp)
qqline(v_exp)
qqnorm(res)
qqline(res) 

# Density
plot(density(v_exp))
plot(density(res))

