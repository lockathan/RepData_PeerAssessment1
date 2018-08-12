activity = read.csv("activity.csv")

totalStepsPerDay <- aggregate(steps ~ date, activity, FUN = sum)
hist(totalStepsPerDay$steps)


averageSteps <- aggregate(steps ~ interval, activity, FUN = mean)

plot(averageSteps$steps ~ averageSteps$interval, type = "l")
