# Set working directory to the folder which contains the downloaded data
setwd("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

# Load necessary libraries
library(dplyr)

readDatatable <- function( group, featureTable, activityLabels ) {
  # This function reads the data in the test and train dataasets and organizes
  # them as instructed in the assignment. Inline comments explain the actual steps
  
	# group should be either "test" or "train"
	if( group != "test" && group != "train" ) {
		stop( paste0("invalid value for group argument ", group, "; should be one of test or train") )
	}

  # Read activity list corresponding to observations in dataset
  activityTable = read.table( paste0(group, "/y_", group, ".txt"), 
                              col.names="Activity" )
	# Read dataset using supplied feature names as columns
	dataset = read.table( paste0(group, "/X_", group, ".txt"),
												col.names=featureTable$feature,colClasses="double")
	# Since we will only operate on a subset of this data, discard unnecessary columns
	# this reduces the size of data being operated on
	# Select only features with mean or std in their name
	dataset = select(dataset,grep("mean|std",featureTable$feature,
																ignore.case=TRUE))
	# From features_info.txt - angle() observations are not really average values
	# they just represent angles between averaged vectors, so discard them too
	dataset = select(dataset,
									 grep("^(?!angle)",names(dataset), ignore.case=TRUE, perl=TRUE))
	# Append an Activity column indicating the activity name of each observation
	dataset$Activity = activityLabels$Name[activityTable$Activity]
	# Read list of subjects and append it to dataset
	subjectTable = read.table(paste0(group, "/subject_", group, ".txt"), col.names="Subject")
	dataset$Subject = subjectTable$Subject
	# Assign a SubjectType column to identify these observations
	dataset$SubjectType = group
  # return the dataset
	dataset
}

# Read features table which contains 561 feature names recorded in the datasets
# These will be the column names for data read from test and train datasets
featureTable = read.table("features.txt",colClasses="character",
                          row.names=1,col.names=c("index","feature"),header=FALSE )
# Remove characters which are syntactically illegal to be column names
featureTable$feature = gsub("\\(\\)","",featureTable$feature)
featureTable$feature = gsub("\\(|\\)","_",featureTable$feature)

# Read activity names table which maps activity codes used in the datasets to names 
activityLabels = read.table("activity_labels.txt",row.names=1,
                            col.names=c("index","Name"), colClasses="character")

# Read training and test datasets
trainDataset = readDatatable( "train", featureTable, activityLabels )
testDataset = readDatatable( "test", featureTable, activityLabels )

# Merge training and test datasets
masterDataset = rbind(trainDataset,testDataset)

# Create a tidy dataset as required - 
# For each combination of activity and subject calculate the mean of each observation
tidyDataset = aggregate(x=masterDataset[1:(length(masterDataset)-3)],
              by=list(masterDataset$Activity,masterDataset$Subject), FUN=mean )
# Aesthetic modifications
tidyDataset = rename(tidyDataset, Activity = Group.1)
tidyDataset = rename(tidyDataset, Subject = Group.2)
tidyDataset = tidyDataset[c(2,1,3:length(tidyDataset))]

# Write out the table to a file
write.table(tidyDataset, "tidyDataset.txt", row.names=FALSE)