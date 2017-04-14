filename <- "getdata_data.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# Load activity labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])

# Load features
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# Extract the data on mean and standard deviation
featuresWant <- grep(".*mean.*|.*std.*", features[,2])
featuresWantNames <- features[featuresWant,2]
featuresWantNames = gsub('-mean', 'Mean', featuresWantNames)
featuresWantNames = gsub('-std', 'Std', featuresWantNames)
featuresWantNames <- gsub('[-()]', '', featuresWantNames)

# Load the train datasets
train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresWant]
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

# Load the test datasets
test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresWant]
testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

# merge datasets and add labels
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", featuresWantNames)

# turn activities & subjects into factors
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

library (reshape2)

allDataMelted <- melt(allData, id = c("subject", "activity"))
allDataMean <- dcast(allData.melted, subject + activity ~ variable, mean)

write.table(allDataMean, "tidydata.txt", row.names = FALSE, quote = FALSE)
