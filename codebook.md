Getting and Cleaning Data Course Project
******************************************************************************************************

Data for the project:
******************************************************************************************************
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Data must be downloaded and unzipped in the working directory.

Description:
******************************************************************************************************
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Unzipped Data used for project:
******************************************************************************************************
1. X_train.txt: Training set.
2. y_train.txt: Training labels.
3. X_test.txt: Test set.
4. y_test.txt: Test labels.
5. subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
6. features_info.txt: Shows information about the variables used on the feature vector.
7. features.txt: List of all features.
8. activity_labels.txt: Links the class labels with their activity name.

Work Performed:
******************************************************************************************************
1. Read and merged train and test data, feature, and activity labels
2. Extracted measurements on mean and standard deviation for each measurement from step 1
3. Activities in the data set obtained in step 2 was named with descritive activity names
4. Lebeled the data set obtained in step 3 with descriptive variable names
5. Second independent tidy data set with the average of each variable for each activity and each subject was created from data set obtained in step 4

Variables in the tidy data:
******************************************************************************************************
subject_id  (int 1:30)                                     
activity   (Factor w/ 6 levels WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)                                       
TimeBodyAccelerometer-mean()-X                    
TimeBodyAccelerometer-mean()-Y                    
TimeBodyAccelerometer-mean()-Z                    
TimeBodyAccelerometer-std()-X                     
TimeBodyAccelerometer-std()-Y                     
TimeBodyAccelerometer-std()-Z                     
TimeGravityAccelerometer-mean()-X                 
TimeGravityAccelerometer-mean()-Y                 
TimeGravityAccelerometer-mean()-Z                 
TimeGravityAccelerometer-std()-X                  
TimeGravityAccelerometer-std()-Y                  
TimeGravityAccelerometer-std()-Z                  
TimeBodyAccelerometerJerk-mean()-X                
TimeBodyAccelerometerJerk-mean()-Y                
TimeBodyAccelerometerJerk-mean()-Z                
TimeBodyAccelerometerJerk-std()-X                 
TimeBodyAccelerometerJerk-std()-Y                 
TimeBodyAccelerometerJerk-std()-Z                 
TimeBodyGyroscope-mean()-X                        
TimeBodyGyroscope-mean()-Y                        
TimeBodyGyroscope-mean()-Z                        
TimeBodyGyroscope-std()-X                         
TimeBodyGyroscope-std()-Y                         
TimeBodyGyroscope-std()-Z                         
TimeBodyGyroscopeJerk-mean()-X                    
TimeBodyGyroscopeJerk-mean()-Y                    
TimeBodyGyroscopeJerk-mean()-Z                    
TimeBodyGyroscopeJerk-std()-X                     
TimeBodyGyroscopeJerk-std()-Y                     
TimeBodyGyroscopeJerk-std()-Z                     
TimeBodyAccelerometerMagnitude-mean()             
TimeBodyAccelerometerMagnitude-std()              
TimeGravityAccelerometerMagnitude-mean()          
TimeGravityAccelerometerMagnitude-std()           
TimeBodyAccelerometerJerkMagnitude-mean()         
TimeBodyAccelerometerJerkMagnitude-std()          
TimeBodyGyroscopeMagnitude-mean()                 
TimeBodyGyroscopeMagnitude-std()                  
TimeBodyGyroscopeJerkMagnitude-mean()             
TimeBodyGyroscopeJerkMagnitude-std()              
FrequencyBodyAccelerometer-mean()-X               
FrequencyBodyAccelerometer-mean()-Y               
FrequencyBodyAccelerometer-mean()-Z               
FrequencyBodyAccelerometer-std()-X                
FrequencyBodyAccelerometer-std()-Y                
FrequencyBodyAccelerometer-std()-Z                
FrequencyBodyAccelerometer-meanFreq()-X           
FrequencyBodyAccelerometer-meanFreq()-Y           
FrequencyBodyAccelerometer-meanFreq()-Z           
FrequencyBodyAccelerometerJerk-mean()-X           
FrequencyBodyAccelerometerJerk-mean()-Y           
FrequencyBodyAccelerometerJerk-mean()-Z           
FrequencyBodyAccelerometerJerk-std()-X            
FrequencyBodyAccelerometerJerk-std()-Y            
FrequencyBodyAccelerometerJerk-std()-Z            
FrequencyBodyAccelerometerJerk-meanFreq()-X       
FrequencyBodyAccelerometerJerk-meanFreq()-Y       
FrequencyBodyAccelerometerJerk-meanFreq()-Z       
FrequencyBodyGyroscope-mean()-X                   
FrequencyBodyGyroscope-mean()-Y                   
FrequencyBodyGyroscope-mean()-Z                   
FrequencyBodyGyroscope-std()-X                    
FrequencyBodyGyroscope-std()-Y                    
FrequencyBodyGyroscope-std()-Z                    
FrequencyBodyGyroscope-meanFreq()-X               
FrequencyBodyGyroscope-meanFreq()-Y               
FrequencyBodyGyroscope-meanFreq()-Z               
FrequencyBodyAccelerometerMagnitude-mean()        
FrequencyBodyAccelerometerMagnitude-std()         
FrequencyBodyAccelerometerMagnitude-meanFreq()    
FrequencyBodyAccelerometerJerkMagnitude-mean()    
FrequencyBodyAccelerometerJerkMagnitude-std()     
FrequencyBodyAccelerometerJerkMagnitude-meanFreq()
FrequencyBodyGyroscopeMagnitude-mean()            
FrequencyBodyGyroscopeMagnitude-std()             
FrequencyBodyGyroscopeMagnitude-meanFreq()        
FrequencyBodyGyroscopeJerkMagnitude-mean()        
FrequencyBodyGyroscopeJerkMagnitude-std()         
FrequencyBodyGyroscopeJerkMagnitude-meanFreq()    
