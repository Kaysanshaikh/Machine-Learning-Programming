# this line will download forecast package in your IDE
install.packages('forecast')
library('forecast')
class(AirPassengers)
AirPassengers
plot(AirPassengers)
data<-ts(AirPassengers, frequency=12)
d<-decompose(data, "multiplicative")
plot(d)
model<-auto.arima(AirPassengers)
# h = 10*12 because, forecast is for 10 years for all 12 months
f<-forecast(model, level=c(95), h=10*12)
plot(f)