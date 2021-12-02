# Earth's gravitational acceleration
g = 9.80665

# Variable Angle
current = 3
length = 0.11
angle = ( c(-90, -80, -70, -60, -50, -40, -30, -20, -10, 0, 10, 20, 30, 40, 50, 60, 70, 80, 90) * pi ) / 180
mass = c(-77, -75, -72, -66, -58, -48, -36, -24, -10, 0, 14, 26, 38, 49, 59, 66, 72, 77, 78) / 100000
force = mass * g

# Plot sin
plot(angle, sin(angle))

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