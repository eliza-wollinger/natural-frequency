# Clear variables
rm(list = ls())

# Close plots
dev.off()

# install.packages("installr")
# installr::updateR()
# install.packages("deSolve")
library(deSolve)

# System parameters
mass <- 10
spring_constant <- 4000
damping_coefficient <- 0

mass_spring <- function(t, y, params) {
  position <- y[1]
  velocity <- y[2]
  force <- 400 * cos(10 * t)
  
  dxdt <- velocity
  dvdt <- (force - spring_constant * position) / mass
  
  return(list(c(dxdt, dvdt)))
}

initial_conditions_a <- c(x = 0.1, v = 0)
initial_conditions_b <- c(x = 0, v = 10)
initial_conditions_c <- c(x = 0.1, v = 10)

time <- seq(0, 10, by = 0.01)

# Solve and plot
solution_a <- ode(y = initial_conditions_a, times = time, func = mass_spring, parms = NULL)
solution_b <- ode(y = initial_conditions_b, times = time, func = mass_spring, parms = NULL)
solution_c <- ode(y = initial_conditions_c, times = time, func = mass_spring, parms = NULL)

par(mfrow = c(1, 3))
plot(solution_a[, "time"], solution_a[, "x"], type = 'l', col = 'blue', xlab = 'Time', ylab = 'Position', main = 'Mass-Spring System Response for (a)')
plot(solution_b[, "time"], solution_b[, "x"], type = 'l', col = 'red', xlab = 'Time', ylab = 'Position', main = 'Mass-Spring System Response for (b)')
plot(solution_c[, "time"], solution_c[, "x"], type = 'l', col = 'green', xlab = 'Time', ylab = 'Position', main = 'Mass-Spring System Response for (c)')
par(mfrow = c(1, 1))
par(mfrow = c(3, 1), mar = c(4, 4, 2, 1))
plot(time, solution_a[, "x"], type = "l", col = "red", ylab = "Position", xlab = "Time")
lines(time, solution_b[, "x"], type = "l", col = "blue")
lines(time, solution_c[, "x"], type = "l", col = "green")
legend("topright", legend = c("(a)", "(b)", "(c)"), col = c("red", "blue", "green"), lty = 1)
title(main = "Mass-Spring System Response")
par(mfrow = c(1, 1), mar = c(4, 4, 2, 1))