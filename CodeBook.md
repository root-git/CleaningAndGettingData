
## Cleaning and Getting Clean Data Code Book


### Introduction 

This code book describes the variables, the data, and all the transformations performed to clean up the data collected from the accelerometers from the Samsung Galaxy S smartphone.

### Data

The `tidy.txt` data file is a text file, containing space-separated values of the average of each variable for each activity and each subject. The first row of the data file is the descriptive activity names of the data set. 

### Data File Format
Each row contains sujbect id, activity, 79 averaged signal measurements.

### Identifiers
__Subject__
- Subject identifier, integer, ranges from 1 to 30

__Activity__

6 types of activity:
- WALKING:  subject walking
- WALKING_UPSTAIRS: subject walking upstairs
- WALKING_DOWNSTAIRS: subject walking downstairs
- SITTING: subject sitting
- STANDING: subject standing
- LAYING: subject laying

__Average of Measurements__

All measurements are floating-point values, normalised and bounded within [-1,1].

The measurements are classigied in two domains:
* Time-domain signals-captured from accelerometer and gyroscope raw signals
* Frequency-domain signals-captured from the application of a Fast Fourier Transform(FFT) to some of the time-domain signals

1. __Time-Domain Signals__

__Average time-domain body acceleration in the X,Y, Z directions__

- timeDomainBodyAccelerometerMeanX
- timeDomainBodyAccelerometerMeanY
- timeDomainBodyAccelerometerMeanZ

__Standard deviation of the time-domain body acceleration in the X, Y and Z directions__

- timeDomainBodyAccelerometerStandardDeviationX
- timeDomainBodyAccelerometerStandardDeviationY
- timeDomainBodyAccelerometerStandardDeviationZ

__Average time-domain gravity acceleration in the X, Y and Z directions__

- timeDomainGravityAccelerometerMeanX
- timeDomainGravityAccelerometerMeanY
- timeDomainGravityAccelerometerMeanZ

__Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions__

- timeDomainGravityAccelerometerStandardDeviationX
- timeDomainGravityAccelerometerStandardDeviationY
- timeDomainGravityAccelerometerStandardDeviationZ

__Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions__

- timeDomainBodyAccelerometerJerkMeanX
- timeDomainBodyAccelerometerJerkMeanY
- timeDomainBodyAccelerometerJerkMean

__Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions__

- timeDomainBodyAccelerometerJerkStandardDeviationX
- timeDomainBodyAccelerometerJerkStandardDeviationY
- timeDomainBodyAccelerometerJerkStandardDeviationZ

__Average time-domain body angular velocity in the X, Y and Z directions__

- timeDomainBodyGyroscopeMeanX
- timeDomainBodyGyroscopeMeanY
- timeDomainBodyGyroscopeMeanZ

__Standard deviation of the time-domain body angular velocity in the X, Y and Z directions__

- timeDomainBodyGyroscopeStandardDeviationX
- timeDomainBodyGyroscopeStandardDeviationY
- timeDomainBodyGyroscopeStandardDeviationZ

__Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions__

- timeDomainBodyGyroscopeJerkMeanX
- timeDomainBodyGyroscopeJerkMeanY
- timeDomainBodyGyroscopeJerkMeanZ

__Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions__

- timeDomainBodyGyroscopeJerkStandardDeviationX
- timeDomainBodyGyroscopeJerkStandardDeviationY
- timeDomainBodyGyroscopeJerkStandardDeviationZ

__Average and standard deviation of the time-domain magnitude of body acceleration__

- timeDomainBodyAccelerometerMagnitudeMean
- timeDomainBodyAccelerometerMagnitudeStandardDeviation

__Average and standard deviation of the time-domain magnitude of gravity acceleration__

- timeDomainGravityAccelerometerMagnitudeMean
- timeDomainGravityAccelerometerMagnitudeStandardDeviation

__Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time)__

- timeDomainBodyAccelerometerJerkMagnitudeMean
- timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation

__Average and standard deviation of the time-domain magnitude of body angular velocity__

- timeDomainBodyGyroscopeMagnitudeMean
- timeDomainBodyGyroscopeMagnitudeStandardDeviation

__Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)__

- timeDomainBodyGyroscopeJerkMagnitudeMean
- timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation

2. __Frequency-Domain Signals__

__Average frequency-domain body acceleration in the X, Y and Z directions__

- frequencyDomainBodyAccelerometerMeanX
- frequencyDomainBodyAccelerometerMeanY
- frequencyDomainBodyAccelerometerMeanZ

__Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions__

- frequencyDomainBodyAccelerometerStandardDeviationX
- frequencyDomainBodyAccelerometerStandardDeviationY
- frequencyDomainBodyAccelerometerStandardDeviationZ

__Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions__

- frequencyDomainBodyAccelerometerMeanFrequencyX
- frequencyDomainBodyAccelerometerMeanFrequencyY
- frequencyDomainBodyAccelerometerMeanFrequencyZ

__Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions__

- frequencyDomainBodyAccelerometerJerkMeanX
- frequencyDomainBodyAccelerometerJerkMeanY
- frequencyDomainBodyAccelerometerJerkMeanZ

__Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions__

- frequencyDomainBodyAccelerometerJerkStandardDeviationX
- frequencyDomainBodyAccelerometerJerkStandardDeviationY
- frequencyDomainBodyAccelerometerJerkStandardDeviationZ

__Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions__

- frequencyDomainBodyAccelerometerJerkMeanFrequencyX
- frequencyDomainBodyAccelerometerJerkMeanFrequencyY
- frequencyDomainBodyAccelerometerJerkMeanFrequencyZ

__Average frequency-domain body angular velocity in the X, Y and Z directions__

- frequencyDomainBodyGyroscopeMeanX
- frequencyDomainBodyGyroscopeMeanY
- frequencyDomainBodyGyroscopeMeanZ

__Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions__

- frequencyDomainBodyGyroscopeStandardDeviationX
- frequencyDomainBodyGyroscopeStandardDeviationY
- frequencyDomainBodyGyroscopeStandardDeviationZ

__Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions__

- frequencyDomainBodyGyroscopeMeanFrequencyX
- frequencyDomainBodyGyroscopeMeanFrequencyY
- frequencyDomainBodyGyroscopeMeanFrequencyZ

__Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration__

- frequencyDomainBodyAccelerometerMagnitudeMean
- frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
- frequencyDomainBodyAccelerometerMagnitudeMeanFrequency

__Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time)__

- frequencyDomainBodyAccelerometerJerkMagnitudeMean
- frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
- frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency

__Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time)__

- frequencyDomainBodyGyroscopeJerkMagnitudeMean
- frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
- frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

## Transformation

The following transformations were applied to the data:
1. Loading activity_labels.txt to activityLabels
2. Loading features.txt to features
3. Converting activityLabels and features to character data type
4. Extracting mean and standard deviation from features
5. Replacing "-mean" with "Mean"
6. Replacing "-std" with "Std"
7. Replacting "[-()]" with ""
8. X_train.txt, Y_train.txt and subject_train.txt are combined together
9. X_test.txt, Y_test.txt and subject_test.txt are combined together
10. Results from step 8 and step 8 are merged together
11. Adding labels to the result from step 10
12. Converting subject and activity columns to factor
13. Reshaping merged dataframe in step 13 so each row is a unique id-variable combination
14. Final data set is created with the average of each variable for each activity and each subject




