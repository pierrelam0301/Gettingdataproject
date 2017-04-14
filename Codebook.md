University of California, Irvine Human Activity Recognition Dataset

Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Format

A data frame with 180 obserations on 81 variables

[,1] subject
[,2] activity
[,3] tBodyAccMeanX
[,4] tBodyAccMeanY
[,5] tBodyAccMeanZ
[,6] tBodyAccStdX
[,7] tBodyAccStdY
[,8] tBodyAccStdZ
[,9] tGravityAccMeanX
[,10] tGravityAccMeanY
[,11] tGravityAccMeanZ
[,12] tGravityAccStdX
[,13] tGravityAccStdY
[,14] tGravityAccStdZ
[,15] tBodyAccJerkMeanX
[,16] tBodyAccJerkMeanY
[,17] tBodyAccJerkMeanZ
[,18] tBodyAccJerkStdX
[,19] tBodyAccJerkStdY
[,20] tBodyAccJerkStdZ
[,21] tBodyGyroMeanX
[,22] tBodyGyroMeanY
[,23] tBodyGyroMeanZ
[,24] tBodyGyroStdX
[,25] tBodyGyroStdY
[,26] tBodyGyroStdZ
[,27] tBodyGyroJerkMeanX
[,28] tBodyGyroJerkMeanY
[,29] tBodyGyroJerkMeanZ
[,30] tBodyGyroJerkStdX
[,31] tBodyGyroJerkStdY
[,32] tBodyGyroJerkStdZ
[,33] tBodyAccMagMean
[,34] tBodyAccMagStd
[,35] tGravityAccMagMean
[,36] tGravityAccMagStd
[,37] tBodyAccJerkMagMean
[,38] tBodyAccJerkMagStd
[,39] tBodyGyroMagMean
[,40] tBodyGyroMagStd
[,41] tBodyGyroJerkMagMean
[,42] tBodyGyroJerkMagStd
[,43] fBodyAccMeanX
[,44] fBodyAccMeanY
[,45] fBodyAccMeanZ
[,46] fBodyAccStdX
[,47] fBodyAccStdY
[,48] fBodyAccStdZ
[,49] fBodyAccMeanFreqX
[,50] fBodyAccMeanFreqY
[,51] fBodyAccMeanFreqZ
[,52] fBodyAccJerkMeanX
[,53] fBodyAccJerkMeanY
[,54] fBodyAccJerkMeanZ
[,55] fBodyAccJerkStdX
[,56] fBodyAccJerkStdY
[,57] fBodyAccJerkStdZ
[,58] fBodyAccJerkMeanFreqX
[,59] fBodyAccJerkMeanFreqY
[,60] fBodyAccJerkMeanFreqZ
[,61] fBodyGyroMeanX
[,62] fBodyGyroMeanY
[,63] fBodyGyroMeanZ
[,64] fBodyGyroStdX
[,65] fBodyGyroStdY
[,66] fBodyGyroStdZ
[,67] fBodyGyroMeanFreqX
[,68] fBodyGyroMeanFreqY
[,69] fBodyGyroMeanFreqZ
[,70] fBodyAccMagMean
[,71] fBodyAccMagStd
[,72] fBodyAccMagMeanFreq
[,73] fBodyBodyAccJerkMagMean
[,74] fBodyBodyAccJerkMagStd
[,75] fBodyBodyAccJerkMagMeanFreq
[,76] fBodyBodyGyroMagMean
[,77] fBodyBodyGyroMagStd
[,78] fBodyBodyGyroMagMeanFreq
[,79] fBodyBodyGyroJerkMagMean
[,80] fBodyBodyGyroJerkMagStd
[,81] fBodyBodyGyroJerkMagMeanFreq

Source

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws
