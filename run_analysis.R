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

## Extract only the measurements on the mean and standard deviation for each measurement
features <- read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2] # Loading features names
index <- grep("mean|std", features)
finalData <- mergeData[,c(1, 2,index + 2)]
colnames(finalData) <- c("subject", "activity", features[index])
