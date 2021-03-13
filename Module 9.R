#Load in data and libraries
library(ggplot2)
library(lattice)
data <- data.frame(read.csv("SP500Data.csv"))
data <- data[,-1]
#Very basic plot
plot(data$day, data$closing, xlab = "Day", ylab = "Closing Price")
#Use ggplot for more variation and clarity
ggplot(data,aes(x = day, y = closing, group = 1))+
  geom_line(color = "red", size =1) + geom_point(size = 1) +
  labs(Title = "Closing Price by Day", x = "Day", y = "Closing Price")
#Use lattice for a different style
xyplot(data$closing ~ data$day,
       data = data,
       type = c("p", "g", "smooth"), xlab = "Day", ylab = "Closing Price")

