## 1. Merges the training and the test sets to create one data set.

## 2. Extracts only the measurements on the mean and standard
## deviation for each measurement.

## 3. Uses descriptive activity names to name the activities in the
## data set

## 4. Appropriately labels the data set with descriptive variable
## names.

## 5. From the data set in step 4, creates a second, independent tidy
## data set with the average of each variable for each activity and
## each subject.

library(plyr)
library(dplyr)

root <- getwd()
dataDir <- "UCI HAR Dataset"

downloadData <- function() {
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    zipFile <- "data.zip"

    if (!file.exists(zipFile)) {
        download.file(url, zipFile, method = "curl")
    }

    if (!file.exists(dataDir)) {
        unzip(zipFile)
    }    
}

## prepare the environment
downloadData()

setwd(dataDir)

## column names for x
features <- read.table("features.txt", sep=" ")[,2]

## activity labels for y
activityLabels <- read.table("activity_labels.txt")[,2]

readData <- function(set) {
    setwd(set)

    ## load test subjects
    subjects <- read.table(paste0("subject_", set, ".txt"))
    subjects <- rename(subjects, subject = V1)

    ## load sensor data
    x <- read.table(paste0("X_", set, ".txt"))
    colnames(x) <- features

    ## select only mean and standard deviations from sensor data
    featureCols <- grep("mean|std", names(x))
    x <- x[, featureCols]

    ## load activity data, convert ID to human readable labels
    y <- read.table(paste0("y_", set, ".txt"))
    y <- rename(y, activity = V1)
    y$activity <- activityLabels[y$activity]

    ## bind data
    data <- cbind(subjects, y, x)

    setwd("..")
    return(data)
}

## combine test and training sets
mergedData <- rbind(readData("test"),
                    readData("train"))

## return to main directory
setwd(root)

## create tidy dataset
dataMeans <- function(data) { colMeans(data[,-c(1,2)]) }
tidy <- ddply(mergedData, .(subject, activity), dataMeans)
names(tidy)[-c(1,2)] <- paste0("mean", names(tidy)[-c(1,2)])

## write file
write.table(tidy, "tidyData.txt", row.names = FALSE)
