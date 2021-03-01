library(plyr)
#Example of S3
studentInfo <- list(name = "Nick", age = 20, StudentID = 1, Major = "Information Science", Minor = "Economics")
isS4(studentInfo)
#Example of S4
student <- setClass("student", slots = c(name ="character", age="numeric", Major = "character", Minor = "character"))
Zach <- new("student", name = "Zach", age = 20, Major = "Finance", Minor = "None")
isS4(student)

