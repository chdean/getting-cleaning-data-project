# Getting and Cleaning Data Final Project



*run_analysis.R* downloads the [UCI Human Activity Recognition Using Smartphones Dataset][] and performs basic cleaning and analysis.  The output *tidiData.txt* contains the mean sensor data separated by subject and activity.

The README and features.txt files included with the dataset give more details.

## Data Cleaning

Performed by *run_analysis.R*:

1. Extract only mean and standard deviation columns from sensor data
2. Convert Activity IDs to human readable types
3. Merge test subjects, sensor data, and activity type
4. Merge *test* and *training* sets.
5. Separate by *subject* and *activity* and calculate mean sensor data for each category

## Fields

- **subject**: test subject ID
- **activity**: human readable activity type
  - LAYING
  - SITTING
  - STANDING
  - WALKING
  - WALKING_DOWNSTAIRS
  - WALKING_UPSTAIRS

### Sensor Data

meantBodyAcc-mean()-X
meantBodyAcc-mean()-Y
meantBodyAcc-mean()-Z
meantBodyAcc-std()-X
meantBodyAcc-std()-Y
meantBodyAcc-std()-Z
meantGravityAcc-mean()-X
meantGravityAcc-mean()-Y
meantGravityAcc-mean()-Z
meantGravityAcc-std()-X
meantGravityAcc-std()-Y
meantGravityAcc-std()-Z
meantBodyAccJerk-mean()-X
meantBodyAccJerk-mean()-Y
meantBodyAccJerk-mean()-Z
meantBodyAccJerk-std()-X
meantBodyAccJerk-std()-Y
meantBodyAccJerk-std()-Z
meantBodyGyro-mean()-X
meantBodyGyro-mean()-Y
meantBodyGyro-mean()-Z
meantBodyGyro-std()-X
meantBodyGyro-std()-Y
meantBodyGyro-std()-Z
meantBodyGyroJerk-mean()-X
meantBodyGyroJerk-mean()-Y
meantBodyGyroJerk-mean()-Z
meantBodyGyroJerk-std()-X
meantBodyGyroJerk-std()-Y
meantBodyGyroJerk-std()-Z
meantBodyAccMag-mean()
meantBodyAccMag-std()
meantGravityAccMag-mean()
meantGravityAccMag-std()
meantBodyAccJerkMag-mean()
meantBodyAccJerkMag-std()
meantBodyGyroMag-mean()
meantBodyGyroMag-std()
meantBodyGyroJerkMag-mean()
meantBodyGyroJerkMag-std()
meanfBodyAcc-mean()-X
meanfBodyAcc-mean()-Y
meanfBodyAcc-mean()-Z
meanfBodyAcc-std()-X
meanfBodyAcc-std()-Y
meanfBodyAcc-std()-Z
meanfBodyAcc-meanFreq()-X
meanfBodyAcc-meanFreq()-Y
meanfBodyAcc-meanFreq()-Z
meanfBodyAccJerk-mean()-X
meanfBodyAccJerk-mean()-Y
meanfBodyAccJerk-mean()-Z
meanfBodyAccJerk-std()-X
meanfBodyAccJerk-std()-Y
meanfBodyAccJerk-std()-Z
meanfBodyAccJerk-meanFreq()-X
meanfBodyAccJerk-meanFreq()-Y
meanfBodyAccJerk-meanFreq()-Z
meanfBodyGyro-mean()-X
meanfBodyGyro-mean()-Y
meanfBodyGyro-mean()-Z
meanfBodyGyro-std()-X
meanfBodyGyro-std()-Y
meanfBodyGyro-std()-Z
meanfBodyGyro-meanFreq()-X
meanfBodyGyro-meanFreq()-Y
meanfBodyGyro-meanFreq()-Z
meanfBodyAccMag-mean()
meanfBodyAccMag-std()
meanfBodyAccMag-meanFreq()
meanfBodyBodyAccJerkMag-mean()
meanfBodyBodyAccJerkMag-std()
meanfBodyBodyAccJerkMag-meanFreq()
meanfBodyBodyGyroMag-mean()
meanfBodyBodyGyroMag-std()
meanfBodyBodyGyroMag-meanFreq()
meanfBodyBodyGyroJerkMag-mean()
meanfBodyBodyGyroJerkMag-std()
meanfBodyBodyGyroJerkMag-meanFreq()


[dataset]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

