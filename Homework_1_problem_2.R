## WARNING: please write your solution in the files Problem_1.R, Problem_2.R, etc.
## otherwise your files will _not_ be reviewed and will _not_ graded.

# a)
xmax <- c(25, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)
xmin <- c(23, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)

# b)
differenceinTemp <- xmax - xmin

# c)
avgMax <- mean(xmax)
avgMin <- mean(xmin)

# d)
xmin[xmin < avgMin]

# e)
xmin[xmax > avgMax]

# f)
## NOTE: not DRY (don't repeate yourself). Assign the dates to a vector and
## then use that vector to assign names to the elements of xmin and xmax

names(xmax) <- c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday')
names(xmin) <- c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday')

# g)
temperatures <- data.frame(
  Max_temp = xmax,
  Min_temp = xmin
)
temperatures

# h)
temperatures <- within.data.frame(temperatures,{
  xminFahrenheit = xmin*9/5 + 32
})
temperatures

# i)
## or you can add the second column to temperatures
## instead of repeating the code twice

temperaturesFahrenheit <- data.frame(
  Max_temp_Fahr = xmax*9/5 + 32,
  Min_temp_Fahr = xmin*9/5 + 32
)
temperaturesFahrenheit

# j)

## or better:
temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]

MonFri_temperaturesFahrenheit <- data.frame(
  Max_temp_Fahr = xmax[seq(1:5)]*9/5 + 32,
  Min_temp_Fahr = xmin[seq(1:5)]*9/5 + 32
)
MonFri_temperaturesFahrenheit

MonFri_temperaturesFahrenheit <- data.frame(
  Max_temp_Fahr = xmax[seq(length(xmax)-2)]*9/5 + 32,
  Min_temp_Fahr = xmin[seq(length(xmin)-2)]*9/5 + 32
)
MonFri_temperaturesFahrenheit
