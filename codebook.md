# Code Book

This data is provided by experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
(Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial 
angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset
has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
source: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data cleaning

Before anything, it was needed to download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip,
and then unzip it. As raw data, the data is split into two parts with three independent text files each. In order to make this data set clean,
after properly loading the data, the train and test data set were merged into one. After that, activity labels once numbers were replaced by
names and the names of Features were labelled using descriptive variable names.

## Variables

### Identifiers

* Subject: numbers between 1 and 30 that represent subject ID
* Activity: six different strings that represents the type of activity performed

### Other variables from the data set:
* timeBodyaccelerometerMean-X
* timeBodyaccelerometerMean-Y
* timeBodyaccelerometerMean-Z
* timeBodyaccelerometerSTD-X
* timeBodyaccelerometerSTD-Y
* timeBodyaccelerometerSTD-Z
* timegravityaccelerometerMean-X
* timegravityaccelerometerMean-Y
* timegravityaccelerometerMean-Z
* timegravityaccelerometerSTD-X
* timegravityaccelerometerSTD-Y
* timegravityaccelerometerSTD-Z
* timeBodyaccelerometerJerkMean-X
* timeBodyaccelerometerJerkMean-Y
* timeBodyaccelerometerJerkMean-Z
* timeBodyaccelerometerJerkSTD-X
* timeBodyaccelerometerJerkSTD-Y
* timeBodyaccelerometerJerkSTD-Z
* timeBodygyroscopeMean-X
* timeBodygyroscopeMean-Y
* timeBodygyroscopeMean-Z
* timeBodygyroscopeSTD-X
* timeBodygyroscopeSTD-Y
* timeBodygyroscopeSTD-Z
* timeBodygyroscopeJerkMean-X
* timeBodygyroscopeJerkMean-Y
* timeBodygyroscopeJerkMean-Z
* timeBodygyroscopeJerkSTD-X
* timeBodygyroscopeJerkSTD-Y
* timeBodygyroscopeJerkSTD-Z
* timeBodyaccelerometermagnitudeMean
* timeBodyaccelerometermagnitudeSTD
* timegravityaccelerometermagnitudeMean
* timegravityaccelerometermagnitudeSTD
* timeBodyaccelerometerJerkmagnitudeMean
* timeBodyaccelerometerJerkmagnitudeSTD
* timeBodygyroscopemagnitudeMean
* timeBodygyroscopemagnitudeSTD
* timeBodygyroscopeJerkmagnitudeMean
* timeBodygyroscopeJerkmagnitudeSTD
* frequencyBodyaccelerometerMean-X
* frequencyBodyaccelerometerMean-Y
* frequencyBodyaccelerometerMean-Z
* frequencyBodyaccelerometerSTD-X
* frequencyBodyaccelerometerSTD-Y
* frequencyBodyaccelerometerSTD-Z
* frequencyBodyaccelerometerMeanFreq-X
* frequencyBodyaccelerometerMeanFreq-Y
* frequencyBodyaccelerometerMeanFreq-Z
* frequencyBodyaccelerometerJerkMean-X
* frequencyBodyaccelerometerJerkMean-Y
* frequencyBodyaccelerometerJerkMean-Z
* frequencyBodyaccelerometerJerkSTD-X
* frequencyBodyaccelerometerJerkSTD-Y
* frequencyBodyaccelerometerJerkSTD-Z
* frequencyBodyaccelerometerJerkMeanFreq-X
* frequencyBodyaccelerometerJerkMeanFreq-Y
* frequencyBodyaccelerometerJerkMeanFreq-Z
* frequencyBodygyroscopeMean-X
* frequencyBodygyroscopeMean-Y
* frequencyBodygyroscopeMean-Z
* frequencyBodygyroscopeSTD-X
* frequencyBodygyroscopeSTD-Y
* frequencyBodygyroscopeSTD-Z
* frequencyBodygyroscopeMeanFreq-X
* frequencyBodygyroscopeMeanFreq-Y
* frequencyBodygyroscopeMeanFreq-Z
* frequencyBodyaccelerometermagnitudeMean
* frequencyBodyaccelerometermagnitudeSTD
* frequencyBodyaccelerometermagnitudeMeanFreq
* frequencybodyaccelerometerJerkmagnitudeMean
* frequencybodyaccelerometerJerkmagnitudeSTD
* frequencybodyaccelerometerJerkmagnitudeMeanFreq
* frequencybodygyroscopemagnitudeMean
* frequencybodygyroscopemagnitudeSTD
* frequencybodygyroscopemagnitudeMeanFreq
* frequencybodygyroscopeJerkmagnitudeMean
* frequencybodygyroscopeJerkmagnitudeSTD
* frequencybodygyroscopeJerkmagnitudeMeanFreq
