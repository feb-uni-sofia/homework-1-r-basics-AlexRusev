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
temperaturesFahrenheit <- data.frame(
  Max_temp_Fahr = xmax*9/5 + 32,
  Min_temp_Fahr = xmin*9/5 + 32
)
temperaturesFahrenheit

# j)
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