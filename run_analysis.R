#Downloading data files
url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "dataset.zip")

#Unzip dataset.zip file
if(!file.exists("UCI HAR Dataset")){unzip("dataset.zip")}

#Loading labels + features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

#Converting labels + features to character type
activityLabels[,2] <- as.character(activityLabels[,2])
features[,2] <- as.character(features[,2])

#Extracting mean and standard deviation
featuresMeanSd<- grep(". *mean.*|.*std.*", features[,2])

#Renaming features names
featuresMeanSd.names <- features[featuresMeanSd,2]
featuresMeanSd.names = gsub('-mean', 'Mean', featuresMeanSd.names)
featuresMeanSd.names = gsub('-std', 'Std', featuresMeanSd.names)
featuresMeanSd.names <- gsub('[-()]', '', featuresMeanSd.names)

#Loading train datasets
trainX <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresMeanSd]
trainY <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubj <- read.table("UCI HAR Dataset/train/subject_train.txt")

#Combining trainX, trainY and trainSubj together
train <- cbind(trainSubj, trainY, trainX)

#Loading test datasets
testX <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresMeanSd]
testY <- read.table("UCI HAR Dataset/test/Y_test.txt")
testSubj <- read.table("UCI HAR Dataset/test/subject_test.txt")

#Combining testX, testY and TestSubj together
test <- cbind(testSubj, testY, testX)

#Merging test and train together
trainTest<- rbind(train, test)

#Adding labels
colnames(trainTest) <- c("subject", "activity", featuresMeanSd.names)

#Converting activitues and subjects to factors
trainTest$activity <- factor(trainTest$activity, levels=activityLabels[,1], labels=activityLabels[,2])
trainTest$subject <- as.factor(trainTest$subject)

#Reshaping data so each row is a unique id-variable combination
trainTest.melted <- melt(trainTest, id=c("subject", "activity"))

#Calculating the average of each variable for each activity and each subject
trainTest.mean <- dcast(trainTest.melted, subject + activity ~ variable, mean)

write.table(trainTest.mean, "tidy.txt", row.names=FALSE, quote = FALSE)


