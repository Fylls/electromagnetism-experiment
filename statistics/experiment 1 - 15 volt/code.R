# Data
d = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 20, 30, 40) / 1000
v_exp = c(15, 20, 25, 28, 30, 31, 32.5, 34, 35, 36, 37.5, 39, 39.5, 40)

# Linear regression (all data)
model = lm(v_exp ~ d)
summary(model)

# Linear regression (only first 8)
model2 = lm(v_exp[0:8] ~ d[0:8])
summary(model2)

# Plots with regression line
plot(d, v_exp)
abline(model)

plot(d[0:8], v_exp[0:8])
abline(model2)

# The second model is better so we proceed studying its residuals
res = resid(model2)

# Residual VS Fitted plot
plot(fitted(model2), res)
abline(0,0)

# Shapiro-Wilk
shapiro.test(v_exp)
shapiro.test(v_exp[0:8])
shapiro.test(res)

# QQ-plot 
qqnorm(v_exp)
qqline(v_exp)
qqnorm(v_exp[0:8])
qqline(v_exp[0:8])
qqnorm(res)
qqline(res) 

# Density
plot(density(v_exp))
plot(density(v_exp[0:8]))
plot(density(res))