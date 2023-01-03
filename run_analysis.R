## Reading the data to create dataframes

activities <- read.table("C:/Users/nuria.campos/Documents/Data Science/GandC Data/UCI HAR Dataset/activity_labels.txt", col.names = c("activity_id", "activity"))
features <- read.table("C:/Users/nuria.campos/Documents/Data Science/GandC Data/UCI HAR Dataset/features.txt", col.names = c("feature_id", "feature"))
subject_test <- read.table("C:/Users/nuria.campos/Documents/Data Science/GandC Data/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
x_test <- read.table("C:/Users/nuria.campos/Documents/Data Science/GandC Data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("C:/Users/nuria.campos/Documents/Data Science/GandC Data/UCI HAR Dataset/test/y_test.txt", col.names = "label")
subject_train <- read.table("C:/Users/nuria.campos/Documents/Data Science/GandC Data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
x_train <- read.table("C:/Users/nuria.campos/Documents/Data Science/GandC Data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("C:/Users/nuria.campos/Documents/Data Science/GandC Data/UCI HAR Dataset/train/y_train.txt", col.names = "label")


## Give name of the features to the column names in x_test and x_train

colnames(x_test) <- features$feature
colnames(x_train) <- features$feature


## Merging the training and test sets to create one data set with all data.

test <- cbind(subject_test, y_test, x_test)
train <- cbind(subject_train, y_train, x_train)
all_data <- rbind(test,train)


## Subset the measurements for mean and standard deviation values

data_set <- all_data %>% select(contains("subject") | contains("label") | contains("mean") | contains("std") )


## Replace activity number with activity name

data_set <- data_set %>%
        mutate(label = activities[data_set$label, 2])


## Re-label data_set with more descriptive variable names

names(data_set)[2] <- "activity"
names(data_set) <- gsub("-mean", "_mean", names(data_set))
names(data_set) <- gsub("-std", "_std", names(data_set))
names(data_set) <- gsub( "Acc", "_accelerometer", names(data_set))
names(data_set) <- gsub("Gyro", "_gyroscope", names(data_set))
names(data_set) <- gsub("BodyBody", "Body", names(data_set))


## Create new data_set with the average of each variable for each subject and each activity

Avg_data_set <- data_set %>%
        group_by(subject, activity) %>%
        summarise_all(mean)

## Write tidy data set

write.table(Avg_data_set, "TidyData.txt", row.names = FALSE)


