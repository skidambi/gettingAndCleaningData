# gettingAndCleaningData
## Project information
This exercise is the final project for the [Getting and cleaning Data](https://class.coursera.org/getdata-015)
course taught by [Dr. Jeff Leek](http://jtleek.com/teaching/) on [Coursera](http://coursera.org). The objective of this
project is to transform data available from [this location](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
into a tidy dataset containing consolidated data aggregating observed values per subject and action. The original data was collected from the accelerometers of Samsung Galaxy S smartphones and is maintained at [the UCI machine learning repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) 

## Repository contents
The repository has the following files of interest:

1. Readme.md: this file which has an overview of the contents
2. run_activity.R: an R script continaing code to read in the downloaded data, transform it as required and
   write out a tidy dataset called tidyDataset.txt to the working directory
3. codebook.md: a code book describing the output variables in the tidy dataset
4. tidyDataset.txt: the output tidy dataset obtained by running run_activity.R on downloaded data

## Running the code
1. Save this code as "run_analysis.R"
2. Change working directory to the _UCI HAR Dataset_ folder of the downloaded data
3. ```source "run_analysis.R"``` (use appropriate path to the saved file)

## Requirements
The following files and directories are expected to exist in the working directory
(as contained in the _UCI HAR Dataset_ folder of downloaded data) :
   - a _features.txt_ file
   - an _activity_labels.txt_ file
   - a directory called _train_ containing the following files:
       - _x_train.txt_
       - _y_train.txt_
       - _subject_train.txt_
   - a directory called _test_ containing the following files:
       - _x_test.txt_
       - _y_test.txt_
       - _subject_test.txt_

## Output
The code creates a single output file called _tidyDataset.txt_ which is a tidy dataset containing the transformed
variables as described below

## Data transformation steps

The original data was transformed as follows:

1. The _features.txt_ file is read in to obtain the 561 feature descriptions for observations in the test
   and train datasets
2. The _activity_labels.txt_ file is read in to map the activity IDs used in the datasets to the activity
   descriptions
3. For the train and test datasets:
    1. The x_train.txt or x_test.txt dataset is read using the feature names obtained in step 1 as columns
    2. The y_train.txt or y_test.txt file is read in to obtain the activity IDs for corresponding
       observations in the dataset
    3. The subject_train.txt or subject_test.txt file is read in to obtain the subject IDs for corresponding
       observations in the dataset
    4. The dataset obtained from step 1 is filtered to retain only columns representing sum or standard deviation values. The column names containing the words _mean_ or _std_ are picked. Note that the _angle()_ observations are discarded inspite of having _mean_ in their name, because they just represent angles between averaged vectors (from _features_info.txt_).
    5. The data read in steps 2 and 3 are appended as _activity_ (after mapping via the activity labels read in earlier)
       and _subject_ columns to the dataset in step 4
4. The resulting train and test datasets are merged into a single dataset called _masterDataset_
5. A tidy dataset _tidyDataset_ is obtained by aggregating the averages of all observations for unique
   combinations of subject and activity
6. _subject_ and _activity_ columns are arranged to be the first two columns of _tidyDataset_
7. The resultant _tidyDataset_ is written out to a file called _tidyDataset.txt_ in the working directory
