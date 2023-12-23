# Mass-Spring System Simulation

This R project simulates the response of a mass-spring system to external forces under different initial conditions. It utilizes the `deSolve` package for solving differential equations and provides visualizations of the system's behavior.

## Table of Contents

- [Introduction](#introduction)
- [Dependencies](#dependencies)
- [Usage](#usage)
- [Simulation Details](#simulation-details)
- [Results](#results)
  
## Introduction

This project demonstrates the simulation and visualization of a mass-spring system's response to external forces. The system's behavior is analyzed under different sets of initial conditions, and the results are presented through plots generated using R and the `deSolve` package.

## Dependencies

- R (version X.X.X)
- [deSolve](https://cran.r-project.org/web/packages/deSolve/index.html) R package

Install the required packages using:

```R
# Install and load the deSolve package
install.packages("deSolve")
library(deSolve)
```

## Usage
Clone the repository:

```bash
git clone https://github.com/your-username/natural-frequency.git
```
Open the R script mass_spring_simulation.R in your preferred R environment.

Run the script to simulate and visualize the mass-spring system's response.

## Simulation Details

### System Parameters:

- Mass: 10 units
- Spring Constant: 4000 units
- Damping Coefficient: 0 units
- External Force: A sinusoidal force of 400 * cos(10 * t) units is applied to the system.

### Initial Conditions:
Three different sets of initial conditions are considered (a, b, and c).

### Time Range:
The simulation is performed over a time range from 0 to 10 seconds with a time step of 0.01 seconds.

## Results
The project generates multiple plots illustrating the position of the mass over time for each set of initial conditions. The plots are organized as follows:

Individual plots for scenarios (a), (b), and (c).
A combined plot showing all three scenarios for comparison.
