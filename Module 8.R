package <- c("plyr", "dplyr", "stringr", "ISLR", "data.table")
lapply(package, library, character.only = 1)
students <- read.table("Assignment 6 Dataset-1.txt", header = TRUE, sep = ",")
#Finding the group mean
groupAverage <- ddply(students, "Sex", summarise, Average = mean(Grade))
groupAverage
i_students <- subset(students, grepl("i", students$Name, ignore.case=T))
#Write to a file
write.csv(i_students, "iStudents.csv")
