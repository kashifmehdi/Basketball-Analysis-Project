# Creating Function
myplot <- function(data, rows=1:10){
  Data <- data[rows,,drop =FALSE]
  matplot(t(Data), type= "b", pch=15:18, col=c(1:4,6))
  legend("bottomleft",inset = 0.01, legend= Players[rows], col=c(1:4, 6), pch=15:18,horiz = FALSE)
}

myplot(Games)

#Salary
myplot(Salary)
myplot(Salary / Games)
myplot(Salary / FieldGoals)

#In-Game metrics
myplot(MinutesPlayed)
myplot(Points)

#In-Game Metrics Normalized
myplot(FieldGoals / Games)
myplot(FieldGoals / FieldGoalAttempts)
myplot(FieldGoalAttempts / Games)
myplot(Points / Games)

#Interesting Observation
myplot(MinutesPlayed/Games)
myplot(Games)

#Time is Valuable
myplot(FieldGoals/MinutesPlayed)

#Player Style
myplot(Points/FieldGoals)
