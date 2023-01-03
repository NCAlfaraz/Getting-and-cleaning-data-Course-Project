After running the script run_analysis.R, the file "TidyData.txt" is written, a tidy dataset containing the average of each variable for each of the 6 activities performed
by each of the 30 subjects.

## Info

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


## Notes
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the 'X' and 'y' files.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.

## Updated list of variables in the TidyData

subject
activity
tBody_accelerometer_mean()-X
tBody_accelerometer_mean()-Y
tBody_accelerometer_mean()-Z
tGravity_accelerometer_mean()-X
tGravity_accelerometer_mean()-Y
tGravity_accelerometer_mean()-Z
tBody_accelerometerJerk_mean()-X
tBody_accelerometerJerk_mean()-Y
tBody_accelerometerJerk_mean()-Z
tBody_gyroscope_mean()-X
tBody_gyroscope_mean()-Y
tBody_gyroscope_mean()-Z
tBody_gyroscopeJerk_mean()-X
tBody_gyroscopeJerk_mean()-Y
tBody_gyroscopeJerk_mean()-Z
tBody_accelerometerMag_mean()
tGravity_accelerometerMag_mean()
tBody_accelerometerJerkMag_mean()
tBody_gyroscopeMag_mean()
tBody_gyroscopeJerkMag_mean()
fBody_accelerometer_mean()-X
fBody_accelerometer_mean()-Y
fBody_accelerometer_mean()-Z
fBody_accelerometer_meanFreq()-X
fBody_accelerometer_meanFreq()-Y
fBody_accelerometer_meanFreq()-Z
fBody_accelerometerJerk_mean()-X
fBody_accelerometerJerk_mean()-Y
fBody_accelerometerJerk_mean()-Z
fBody_accelerometerJerk_meanFreq()-X
fBody_accelerometerJerk_meanFreq()-Y
fBody_accelerometerJerk_meanFreq()-Z
fBody_gyroscope_mean()-X
fBody_gyroscope_mean()-Y
fBody_gyroscope_mean()-Z
fBody_gyroscope_meanFreq()-X
fBody_gyroscope_meanFreq()-Y
fBody_gyroscope_meanFreq()-Z
fBody_accelerometerMag_mean()
fBody_accelerometerMag_meanFreq()
fBody_accelerometerJerkMag_mean()
fBody_accelerometerJerkMag_meanFreq()
fBody_gyroscopeMag_mean()
fBody_gyroscopeMag_meanFreq()
fBody_gyroscopeJerkMag_mean()
fBody_gyroscopeJerkMag_meanFreq()
angle(tBody_accelerometerMean,gravity)
angle(tBody_accelerometerJerkMean),gravityMean)
angle(tBody_gyroscopeMean,gravityMean)
angle(tBody_gyroscopeJerkMean,gravityMean)
angle(X,gravityMean)
angle(Y,gravityMean)
angle(Z,gravityMean)
tBody_accelerometer_std()-X
tBody_accelerometer_std()-Y
tBody_accelerometer_std()-Z
tGravity_accelerometer_std()-X
tGravity_accelerometer_std()-Y
tGravity_accelerometer_std()-Z
tBody_accelerometerJerk_std()-X
tBody_accelerometerJerk_std()-Y
tBody_accelerometerJerk_std()-Z
tBody_gyroscope_std()-X
tBody_gyroscope_std()-Y
tBody_gyroscope_std()-Z
tBody_gyroscopeJerk_std()-X
tBody_gyroscopeJerk_std()-Y
tBody_gyroscopeJerk_std()-Z
tBody_accelerometerMag_std()
tGravity_accelerometerMag_std()
tBody_accelerometerJerkMag_std()
tBody_gyroscopeMag_std()
tBody_gyroscopeJerkMag_std()
fBody_accelerometer_std()-X
fBody_accelerometer_std()-Y
fBody_accelerometer_std()-Z
fBody_accelerometerJerk_std()-X
fBody_accelerometerJerk_std()-Y
fBody_accelerometerJerk_std()-Z
fBody_gyroscope_std()-X
fBody_gyroscope_std()-Y
fBody_gyroscope_std()-Z
fBody_accelerometerMag_std()
fBody_accelerometerJerkMag_std()
fBody_gyroscopeMag_std()
fBody_gyroscopeJerkMag_std()
