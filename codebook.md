# Variable transformations and descriptions

## Project and Data information
The source data for this exercise was obtained from 
[this location](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
as part of the final project for [Getting and Cleaning Data](https://class.coursera.org/getdata-015)
course taught by [Dr. Jeff Leek](http://jtleek.com/teaching/) on [Coursera](http://coursera.org).
See the [Readme](https://github.com/skidambi/gettingAndCleaningData/Readme.md) file for more information.

## Variable transformations
1. The test and train datasets were consolidated to contain subject ID, activity name and observation variables
that were either averages or standard deviations of raw observations.
2. The two datasets were then combined to form a master dataset.
3. The data in the master dataset were then summarized to contain the average values of each chosen observation
for every combination of subject ID and activity.

This results in a tidy dataset containing exactly one variable per column, and one observation of these varibles
per row

## _tidyDataset.txt_ variable descriptions

Each value in the table represents the average value of the named variable for each combination of subject ID and
activity denoted in the ``subject`` and ``activity`` columns.

The descriptions of individual columns are as follows:
* __subject :__ Subject ID of the subject performing the experiment as extracted from _test/subject_test.txt_ and
_train/subject_train.txt_
* __activity :__ Activity that was performed as defined in _activity_list.txt_
* __tBodyAcc.mean.Z :__ Mean value of time domain Body linear acceleration in Z direction 
(units: ``standard gravity units 'g'``)
* __tBodyAcc.std.X :__ Standard deviation of time domain Body linear acceleration in X direction 
(units: ``standard gravity units 'g'``)
* __tBodyAcc.std.Y :__ Standard deviation of time domain Body linear acceleration in Y direction 
(units: ``standard gravity units 'g'``)
* __tBodyAcc.std.Z :__ Standard deviation of time domain Body linear acceleration in Z direction 
(units: ``standard gravity units 'g'``)
* __tGravityAcc.mean.X :__ Mean value of time domain Gravity linear acceleration in X direction 
(units: ``standard gravity units 'g'``)
* __tGravityAcc.mean.Y :__ Mean value of time domain Gravity linear acceleration in Y direction 
(units: ``standard gravity units 'g'``)
* __tGravityAcc.mean.Z :__ Mean value of time domain Gravity linear acceleration in Z direction 
(units: ``standard gravity units 'g'``)
* __tGravityAcc.std.X :__ Standard deviation of time domain Gravity linear acceleration in X direction 
(units: ``standard gravity units 'g'``)
* __tGravityAcc.std.Y :__ Standard deviation of time domain Gravity linear acceleration in Y direction 
(units: ``standard gravity units 'g'``)
* __tGravityAcc.std.Z :__ Standard deviation of time domain Gravity linear acceleration in Z direction 
(units: ``standard gravity units 'g'``)
* __tBodyAccJerk.mean.X :__ Mean value of time domain Body linear acceleration jerk signal in X direction 
(units: ``standard gravity units 'g'``)
* __tBodyAccJerk.mean.Y :__ Mean value of time domain Body linear acceleration jerk signal in Y direction 
(units: ``standard gravity units 'g'``)
* __tBodyAccJerk.mean.Z :__ Mean value of time domain Body linear acceleration jerk signal in Z direction 
(units: ``standard gravity units 'g'``)
* __tBodyAccJerk.std.X :__ Standard deviation of time domain Body linear acceleration jerk signal in X direction 
(units: ``standard gravity units 'g'``)
* __tBodyAccJerk.std.Y :__ Standard deviation of time domain Body linear acceleration jerk signal in Y direction 
(units: ``standard gravity units 'g'``)
* __tBodyAccJerk.std.Z :__ Standard deviation of time domain Body linear acceleration jerk signal in Z direction 
(units: ``standard gravity units 'g'``)
* __tBodyGyro.mean.X :__ Mean value of time domain Body angular velocity in X direction 
(units: ``radians/sec``)
* __tBodyGyro.mean.Y :__ Mean value of time domain Body angular velocity in Y direction 
(units: ``radians/sec``)
* __tBodyGyro.mean.Z :__ Mean value of time domain Body angular velocity in Z direction 
(units: ``radians/sec``)
* __tBodyGyro.std.X :__ Standard deviation of time domain Body angular velocity in X direction 
(units: ``radians/sec``)
* __tBodyGyro.std.Y :__ Standard deviation of time domain Body angular velocity in Y direction 
(units: ``radians/sec``)
* __tBodyGyro.std.Z :__ Standard deviation of time domain Body angular velocity in Z direction 
(units: ``radians/sec``)
* __tBodyGyroJerk.mean.X :__ Mean value of time domain Body angular velocity jerk signal in X direction 
(units: ``radians/sec``)
* __tBodyGyroJerk.mean.Y :__ Mean value of time domain Body angular velocity jerk signal in Y direction 
(units: ``radians/sec``)
* __tBodyGyroJerk.mean.Z :__ Mean value of time domain Body angular velocity jerk signal in Z direction 
(units: ``radians/sec``)
* __tBodyGyroJerk.std.X :__ Standard deviation of time domain Body angular velocity jerk signal in X direction 
(units: ``radians/sec``)
* __tBodyGyroJerk.std.Y :__ Standard deviation of time domain Body angular velocity jerk signal in Y direction 
(units: ``radians/sec``)
* __tBodyGyroJerk.std.Z :__ Standard deviation of time domain Body angular velocity jerk signal in Z direction 
(units: ``radians/sec``)
* __tBodyAccMag.mean :__ Mean value of time domain Body linear acceleration magnitude  
(units: ``standard gravity units 'g'``)
* __tBodyAccMag.std :__ Standard deviation of time domain Body linear acceleration magnitude  
(units: ``standard gravity units 'g'``)
* __tGravityAccMag.mean :__ Mean value of time domain Gravity linear acceleration magnitude  
(units: ``standard gravity units 'g'``)
* __tGravityAccMag.std :__ Standard deviation of time domain Gravity linear acceleration magnitude  
(units: ``standard gravity units 'g'``)
* __tBodyAccJerkMag.mean :__ Mean value of time domain Body linear acceleration jerk signal magnitude  
(units: ``standard gravity units 'g'``)
* __tBodyAccJerkMag.std :__ Standard deviation of time domain Body linear acceleration jerk signal magnitude  
(units: ``standard gravity units 'g'``)
* __tBodyGyroMag.mean :__ Mean value of time domain Body angular velocity magnitude  
(units: ``radians/sec``)
* __tBodyGyroMag.std :__ Standard deviation of time domain Body angular velocity magnitude  
(units: ``radians/sec``)
* __tBodyGyroJerkMag.mean :__ Mean value of time domain Body angular velocity jerk signal magnitude  
(units: ``radians/sec``)
* __tBodyGyroJerkMag.std :__ Standard deviation of time domain Body angular velocity jerk signal magnitude  
(units: ``radians/sec``)
* __fBodyAcc.mean.X :__ Mean value of frequency domain Body linear acceleration in X direction 
(units: ``standard gravity units 'g'``)
* __fBodyAcc.mean.Y :__ Mean value of frequency domain Body linear acceleration in Y direction 
(units: ``standard gravity units 'g'``)
* __fBodyAcc.mean.Z :__ Mean value of frequency domain Body linear acceleration in Z direction 
(units: ``standard gravity units 'g'``)
* __fBodyAcc.std.X :__ Standard deviation of frequency domain Body linear acceleration in X direction 
(units: ``standard gravity units 'g'``)
* __fBodyAcc.std.Y :__ Standard deviation of frequency domain Body linear acceleration in Y direction 
(units: ``standard gravity units 'g'``)
* __fBodyAcc.std.Z :__ Standard deviation of frequency domain Body linear acceleration in Z direction 
(units: ``standard gravity units 'g'``)
* __fBodyAcc.meanFreq.X :__ Mean frequency of frequency domain Body linear acceleration in X direction 
(units: ``standard gravity units 'g'``)
* __fBodyAcc.meanFreq.Y :__ Mean frequency of frequency domain Body linear acceleration in Y direction 
(units: ``standard gravity units 'g'``)
* __fBodyAcc.meanFreq.Z :__ Mean frequency of frequency domain Body linear acceleration in Z direction 
(units: ``standard gravity units 'g'``)
* __fBodyAccJerk.mean.X :__ Mean value of frequency domain Body linear acceleration jerk signal in X direction 
(units: ``standard gravity units 'g'``)
* __fBodyAccJerk.mean.Y :__ Mean value of frequency domain Body linear acceleration jerk signal in Y direction 
(units: ``standard gravity units 'g'``)
* __fBodyAccJerk.mean.Z :__ Mean value of frequency domain Body linear acceleration jerk signal in Z direction 
(units: ``standard gravity units 'g'``)
* __fBodyAccJerk.std.X :__ Standard deviation of frequency domain Body linear acceleration jerk signal in X direction 
(units: ``standard gravity units 'g'``)
* __fBodyAccJerk.std.Y :__ Standard deviation of frequency domain Body linear acceleration jerk signal in Y direction 
(units: ``standard gravity units 'g'``)
* __fBodyAccJerk.std.Z :__ Standard deviation of frequency domain Body linear acceleration jerk signal in Z direction 
(units: ``standard gravity units 'g'``)
* __fBodyAccJerk.meanFreq.X :__ Mean frequency of frequency domain Body linear acceleration jerk signal in X direction 
(units: ``standard gravity units 'g'``)
* __fBodyAccJerk.meanFreq.Y :__ Mean frequency of frequency domain Body linear acceleration jerk signal in Y direction 
(units: ``standard gravity units 'g'``)
* __fBodyAccJerk.meanFreq.Z :__ Mean frequency of frequency domain Body linear acceleration jerk signal in Z direction 
(units: ``standard gravity units 'g'``)
* __fBodyGyro.mean.X :__ Mean value of frequency domain Body angular velocity in X direction 
(units: ``radians/sec``)
* __fBodyGyro.mean.Y :__ Mean value of frequency domain Body angular velocity in Y direction 
(units: ``radians/sec``)
* __fBodyGyro.mean.Z :__ Mean value of frequency domain Body angular velocity in Z direction 
(units: ``radians/sec``)
* __fBodyGyro.std.X :__ Standard deviation of frequency domain Body angular velocity in X direction 
(units: ``radians/sec``)
* __fBodyGyro.std.Y :__ Standard deviation of frequency domain Body angular velocity in Y direction 
(units: ``radians/sec``)
* __fBodyGyro.std.Z :__ Standard deviation of frequency domain Body angular velocity in Z direction 
(units: ``radians/sec``)
* __fBodyGyro.meanFreq.X :__ Mean frequency of frequency domain Body angular velocity in X direction 
(units: ``radians/sec``)
* __fBodyGyro.meanFreq.Y :__ Mean frequency of frequency domain Body angular velocity in Y direction 
(units: ``radians/sec``)
* __fBodyGyro.meanFreq.Z :__ Mean frequency of frequency domain Body angular velocity in Z direction 
(units: ``radians/sec``)
* __fBodyAccMag.mean :__ Mean value of frequency domain Body linear acceleration magnitude  
(units: ``standard gravity units 'g'``)
* __fBodyAccMag.std :__ Standard deviation of frequency domain Body linear acceleration magnitude  
(units: ``standard gravity units 'g'``)
* __fBodyAccMag.meanFreq :__ Mean frequency of frequency domain Body linear acceleration magnitude  
(units: ``standard gravity units 'g'``)
* __fBodyBodyAccJerkMag.mean :__ Mean value of frequency domain BodyBody linear acceleration jerk signal magnitude  
(units: ``standard gravity units 'g'``)
* __fBodyBodyAccJerkMag.std :__ Standard deviation of frequency domain BodyBody linear acceleration jerk signal magnitude  
(units: ``standard gravity units 'g'``)
* __fBodyBodyAccJerkMag.meanFreq :__ Mean frequency of frequency domain BodyBody linear acceleration jerk signal magnitude  
(units: ``standard gravity units 'g'``)
* __fBodyBodyGyroMag.mean :__ Mean value of frequency domain BodyBody angular velocity magnitude  
(units: ``radians/sec``)
* __fBodyBodyGyroMag.std :__ Standard deviation of frequency domain BodyBody angular velocity magnitude  
(units: ``radians/sec``)
* __fBodyBodyGyroMag.meanFreq :__ Mean frequency of frequency domain BodyBody angular velocity magnitude  
(units: ``radians/sec``)
* __fBodyBodyGyroJerkMag.mean :__ Mean value of frequency domain BodyBody angular velocity jerk signal magnitude  
(units: ``radians/sec``)
* __fBodyBodyGyroJerkMag.std :__ Standard deviation of frequency domain BodyBody angular velocity jerk signal magnitude  
(units: ``radians/sec``)
* __fBodyBodyGyroJerkMag.meanFreq :__ Mean frequency of frequency domain BodyBody angular velocity jerk signal magnitude  
(units: ``radians/sec``)
