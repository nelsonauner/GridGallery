
#timeseries
#base


steps <- read.csv("steps.csv")
steps$date <- as.Date(steps$date)
plot(steps$date,steps$clare,type="l",ylab="daily steps",xlab="date")


