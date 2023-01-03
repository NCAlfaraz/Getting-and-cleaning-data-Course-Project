# Getting and cleaning data Course Project


The purpose of the project is creating an R script doing the following:

- Merges the training and the test sets to create one data set.
 
- Extracts only the measurements on the mean and standard deviation for each measurement. 

- Uses descriptive activity names to name the activities in the data set

- Appropriately labels the data set with descriptive variable names. 
     
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	


An R script called run_analysis.R has been created, following these steps:

- Reading the data to create dataframes
- Give name of the features to the column names in x_test and x_train
- Merging the training and test sets to create one data set with all data
- Subset the measurements for mean and standard deviation values
- Replace activity number with activity name
- Re-label data_set with more descriptive variable names
- Create new data_set with the average of each variable for each subject and each activity
- Write tidy data set
