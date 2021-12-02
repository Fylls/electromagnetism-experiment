# Earth's gravitational acceleration
g = 9.80665

# Variable length
current = c(1, 1.5, 2, 2.5, 3, 3.5, 4)
length = 0.04
angle = pi / 2
mass = c(0.38, 0.57,  0.79, 0.98, 1.18, 1.37, 1.53) / 1000
force = mass * g

# Linear regression
model = lm(force ~ I(current * length * sin(angle)))
summary(model)

# Plots with regression line
plot(current * length * sin(angle), force)
abline(model)

# Residuals
res = resid(model)

# Residual VS Fitted plot
plot(fitted(model), res)
abline(0,0)

# Shapiro-Wilk
shapiro.test(res)
shapiro.test(mass)

# QQ-plot 
qqnorm(res)
qqline(res)

#qqnorm(mass)
#qqline(mass)

# Density
plot(density(res))
plot(density(mass))


