library(dplyr)

#1. Merges the training and the test sets to create one data set.
#*************************************************************************************************************************************************
# Reading train and test data, feature, and activity labels
x_train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train_data <- read.table("./UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
x_test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test_data <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
features <- read.table('./UCI HAR Dataset/features.txt')
activitylabels <- read.table('./UCI HAR Dataset/activity_labels.txt')

colnames(activitylabels) <- c('activity_id','activity_type')

train_data <- cbind(subject_train, y_train_data, x_train_data)
test_data <- cbind(subject_test, y_test_data, x_test_data)
merged_data <- rbind(train_data, test_data)
colnames(merged_data) <- c("subject_id", "activity_id", t(as.data.frame(features[,2])))

#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#*************************************************************************************************************************************************
mean_std_data <- merged_data[,(grepl("mean..", names(merged_data)) | grepl("std..", names(merged_data)) | grepl("activity_id", names(merged_data))| grepl("subject_id", names(merged_data)))]

#3. Uses descriptive activity names to name the activities in the data set
#*************************************************************************************************************************************************
mean_std_data_with_acnames <- mean_std_data 
mean_std_data_with_acnames[,2] <- activitylabels[mean_std_data_with_acnames[,2],2]
colnames(mean_std_data_with_acnames)[2] <- "activity"

#4. Appropriately labels the data set with descriptive variable names.
#*************************************************************************************************************************************************
m_s_with_dvnames <- mean_std_data_with_acnames
names(m_s_with_dvnames) <- gsub("^t", "Time", names(m_s_with_dvnames))
names(m_s_with_dvnames) <- gsub("^f", "Frequency", names(m_s_with_dvnames))
names(m_s_with_dvnames) <- gsub("Acc", "Accelerometer", names(m_s_with_dvnames))
names(m_s_with_dvnames) <- gsub("Gyro", "Gyroscope", names(m_s_with_dvnames))
names(m_s_with_dvnames) <- gsub("Mag", "Magnitude", names(m_s_with_dvnames))
names(m_s_with_dvnames) <- gsub("BodyBody", "Body", names(m_s_with_dvnames))

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#*************************************************************************************************************************************************
tidy_data <- aggregate(. ~subject_id + activity, m_s_with_dvnames, mean)
tidy_data <- tidy_data[order(tidy_data$subject_id, tidy_data$activity),]
write.table(tidy_data, "tidy_data.txt", row.name=FALSE)
