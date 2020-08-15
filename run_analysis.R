## Creating a separate directory for the data
if(!file.exists("./data")){dir.create("./data")}

## Downloading and unzipping data
fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/projectData.zip")
unzip("./data/projectData.zip", exdir = "./data")

## Loading data
xtrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subjecTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
xtest <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subjecTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

## Merging training and testing data
trainData <- cbind(subjecTrain, ytrain, xtrain)
testData <- cbind(subjecTest, ytest, xtest)
mergeData <- rbind(trainData, testData)

## Extracting only the measurements on the mean and standard deviation for each measurement
features <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2] # Loading features names
index <- grep("mean|std", features)
finalData <- mergeData[,c(1, 2,index + 2)]
colnames(finalData) <- c("subject", "activity", features[index]) # Naming data set

## Using descriptive activity names to name the activities in the data set
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt") # Loading activity labels
finalData$activity <- factor(finalData$activity, levels = activityLabels[,1], labels = activityLabels[,2]) # Naming activities

## Appropriately labeling the data set with descriptive variable names
names(finalData) <- gsub("\\()", "", names(finalData))
names(finalData)<-gsub("Acc", "Accelerometer", names(finalData))
names(finalData)<-gsub("Gyro", "Gyroscope", names(finalData))
names(finalData)<-gsub("BodyBody", "Body", names(finalData))
names(finalData)<-gsub("Mag", "Magnitude", names(finalData))
names(finalData)<-gsub("^t", "Time", names(finalData))
names(finalData)<-gsub("^f", "Frequency", names(finalData))
names(finalData)<-gsub("tBody", "TimeBody", names(finalData))
names(finalData)<-gsub("-mean()", "Mean", names(finalData), ignore.case = TRUE)
names(finalData)<-gsub("-std()", "STD", names(finalData), ignore.case = TRUE)
names(finalData)<-gsub("-freq()", "Frequency", names(finalData), ignore.case = TRUE)
names(finalData)<-gsub("angle", "Angle", names(finalData))
names(finalData)<-gsub("gravity", "Gravity", names(finalData))

## Creating a second, independent tidy data set with the average of each variable for each activity and each subject
library(dplyr)
summarizeData <- finalData %>% group_by(subject, activity) %>% summarise_each(c("mean"))
write.table(summarizeData, "./data/avgData.txt")
