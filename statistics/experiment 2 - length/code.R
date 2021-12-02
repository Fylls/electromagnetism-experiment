# Earth's gravitational acceleration
g = 9.80665

# Data
current = 3
length = c(10, 20, 30, 40, 60, 80) / 1000
angle = pi/2

# Laplace force
mass = c(0.31, 0.59, 0.87, 1.16, 1.69, 2.2) / 1000
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

qqnorm(mass)
qqline(mass)

# Density
plot(density(res))
plot(density(mass))



