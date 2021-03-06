<h1>Table: data</h1>

Data is observations from accelerometers in Samsung Galaxy S phone

Data collected from:
- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Most recent run: <code>June 18, 2014</code>

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The '-'s have been replaced with '_'s to avoid errors when selecting columns by name.

<code>subject</code> is the ID of the observed individual

<code>activity</code> is the description of the activity being performed during the observation. 
The possible activities are:
- laying
- sitting
- standing
- walking
- walking_downstairs
- walking_upstairs

More detailed information at:
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


<h1>Table: variable_averages</h1>

Each row in this <code>data.frame</code> represents a subject and an activity (shown by the <code>subject</code> and <code>activity</code> columns). Each of other columns represents the average of all the values of that column in all observations of that subject performing the specified activity (from the original <code>data</code> dataset).

This dataset was created from the <code>data</code> dataset using the <code>ddplyr</code> package to group and summarise the data.
