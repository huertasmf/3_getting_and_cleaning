---
title: "Codebook"
output: html_document
---

### Data Source
Original data is described in this datasets description.
https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Raw data description
Raw data of the HumanActivity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 
The dataset includes the following files:
=========================================

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Data on features measured for the **test**  can be found in "x_test.txt" and activity labels are in "y_test.txt". Every of each "y" data correspond to 1 to 6 activities included in the study.  Information on test subjects can be found in "subject_test.txt".

The **training** dataset follows a similar format.
the **561 Features** information is found in features_info.txt and
the **6 activity** labels are found in "activity_labels.txt".

###Process of data tyding
Merges the training and the test sets to create one data set. Both have been load by separate and previosly to merges by rbind, the column of "y"" containing the activity (named activity_id) and the column of subject (named subject_id) have been added to the data frame. Also a new column have created includen the **type** of element which can be _"train"_ or _"test"_ with the purpose to matain the original source of every row.

The names of the activities have been includes changing the numercial value by it name
finally the names of the columns have been defined with descriptive of its content. It is stored as df (data.frame) in one variable all_data with 10299rx563c.
The symbols "()-," have been removed or changed by "_".

| Variable | Description
-----------|-------------
| subject | Subject ID
| tbodyacc_Mean_x | Mean time for acceleration of body for X direction
| tbodyacc_Mean_y | Mean time for acceleration of body for Y direction
| tbodyacc_Mean_z | Mean time for acceleration of body for Z direction
| tbodyacc_Std_x | Standard deviation of time for acceleration of body for X direction
| tbodyacc_Std_y | Standard deviation of time for acceleration of body for Y direction
| tbodyacc_Std_z | Standard deviation of time for acceleration of body for Z direction
| tgravityacc_Mean_x | Mean time of acceleration of gravity for X direction
| tgravityacc_Mean_y | Mean time of acceleration of gravity for Y direction
| tgravityacc_Mean_z | Mean time of acceleration of gravity for Z direction
| tgravityacc_Std_x | Standard deviation of time of acceleration of gravity for X direction
| tgravityacc_Std_y | Standard deviation of time of acceleration of gravity for Y direction
| tgravityacc_Std_z | Standard deviation of time of acceleration of gravity for Z direction
| tbodyaccjerk_Mean_x | Mean time of body acceleration jerk for X direction
| tbodyaccjerk_Mean_y | Mean time of body acceleration jerk for Y direction
| tbodyaccjerk_Mean_z | Mean time of body acceleration jerk for Z direction
| tbodyaccjerk_Std_x | Standard deviation of time of body acceleration jerk for X direction
| tbodyaccjerk_Std_y | Standard deviation of time of body acceleration jerk for Y direction
| tbodyaccjerk_Std_z | Standard deviation of time of body acceleration jerk for Z direction
| tbodygyro_Mean_x | Mean body gyroscope measurement for X direction
| tbodygyro_Mean_y | Mean body gyroscope measurement for Y direction
| tbodygyro_Mean_z | Mean body gyroscope measurement for Z direction
| tbodygyro_Std_x | Standard deviation of body gyroscope measurement for X direction
| tbodygyro_Std_y | Standard deviation of body gyroscope measurement for Y direction
| tbodygyro_Std_z | Standard deviation of body gyroscope measurement for Z direction
| tbodygyrojerk_Mean_x | Mean jerk signal of body for X direction
| tbodygyrojerk_Mean_y | Mean jerk signal of body for Y direction
| tbodygyrojerk_Mean_z | Mean jerk signal of body for Z direction
| tbodygyrojerk_Std_x | Standard deviation of jerk signal of body for X direction
| tbodygyrojerk_Std_y | Standard deviation of jerk signal of body for Y direction
| tbodygyrojerk_Std_z | Standard deviation of jerk signal of body for Z direction
| tbodyaccmag_Mean | Mean magnitude of body Acc
| tbodyaccmag_Std | Standard deviation of magnitude of body Acc
| tgravityaccmag_Mean | Mean gravity acceleration magnitude
| tgravityaccmag_Std | Standard deviation of gravity acceleration magnitude
| tbodyaccjerkmag_Mean | Mean magnitude of body acceleration jerk
| tbodyaccjerkmag_Std | Standard deviation of magnitude of body acceleration jerk
| tbodygyromag_Mean | Mean magnitude of body gyroscope measurement
| tbodygyromag_Std | Standard deviation of magnitude of body gyroscope measurement
| tbodygyrojerkmag_Mean | Mean magnitude of body body gyroscope jerk measurement
| tbodygyrojerkmag_Std | Standard deviation of magnitude of body body gyroscope jerk measurement
| fbodyacc_Mean_x | Mean frequency of body acceleration for X direction
| fbodyacc_Mean_y | Mean frequency of body acceleration for Y direction
| fbodyacc_Mean_z | Mean frequency of body acceleration for Z direction
| fbodyacc_Std_x | Standard deviation of frequency of body acceleration for X direction
| fbodyacc_Std_y | Standard deviation of frequency of body acceleration for Y direction
| fbodyacc_Std_z | Standard deviation of frequency of body acceleration for Z direction
| fbodyaccjerk_Mean_x | Mean frequency of body accerlation jerk for X direction
| fbodyaccjerk_Mean_y | Mean frequency of body accerlation jerk for Y direction
| fbodyaccjerk_Mean_z | Mean frequency of body accerlation jerk for Z direction
| fbodyaccjerk_Std_x | Standard deviation frequency of body accerlation jerk for X direction
| fbodyaccjerk_Std_y | Standard deviation frequency of body accerlation jerk for Y direction
| fbodyaccjerk_Std_z | Standard deviation frequency of body accerlation jerk for Z direction
| fbodygyro_Mean_x | Mean frequency of body gyroscope measurement for X direction
| fbodygyro_Mean_y | Mean frequency of body gyroscope measurement for Y direction
| fbodygyro_Mean_z | Mean frequency of body gyroscope measurement for Z direction
| fbodygyro_Std_x | Standard deviation frequency of body gyroscope measurement for X direction
| fbodygyro_Std_y | Standard deviation frequency of body gyroscope measurement for Y direction
| fbodygyro_Std_z | Standard deviation frequency of body gyroscope measurement for Z direction
| fbodyaccmag_Mean | Mean frequency of body acceleration magnitude
| fbodyaccmag_Std | Standard deviation of frequency of body acceleration magnitude
| fbodybodyaccjerkmag_Mean | Mean frequency of body acceleration jerk magnitude
| fbodybodyaccjerkmag_Std | Standard deviation of frequency of body acceleration jerk magnitude
| fbodybodygyromag_Mean | Mean frequency of magnitude of body gyroscope measurement
| fbodybodygyromag_Std | Standard deviation of frequency of magnitude of body gyroscope measurement
| fbodybodygyrojerkmag_Mean | Mean frequency of magnitude of body gyroscope jerk measurement
| fbodybodygyrojerkmag_Std | Standard deviation frequency of magnitude of body gyroscope jerk measurement
| activity | The activity performed
| type | can be _train_ or _test_


###Extraction of particular data
Columns containing **mean or std** data can be subsetting by the **step 2** of the run_analysis.R script. giving a set of 86 cols.

| Column                       | Column               |
| ---------------------------- | ------------------------- |
| Activity_id                  | Subject_id                |
| Time_BodyAcc_Mean_X          | tBodyAcc_Mean_X           |
| Time_BodyAcc_Mean_Y          | tBodyAcc_Mean_Y           |
| Time_BodyAcc_Mean_Z          | tBodyAcc_Mean_Z           |
| Time_BodyAcc_Std_X           | tBodyAcc_Std_X            |
| Time_BodyAcc_Std_Y           | tBodyAcc_Std_Y            |
| Time_BodyAcc_Std_Z           | tBodyAcc_Std_Z            |
| Time_GravityAcc_Mean_X       | tGravityAcc_Mean_X        |
| Time_GravityAcc_Mean_Y       | tGravityAcc_Mean_Y        |
| Time_GravityAcc_Mean_Z       | tGravityAcc_Mean_Z        |
| Time_GravityAcc_Std_X        | tGravityAcc_Std_X         |
| Time_GravityAcc_Std_Y        | tGravityAcc_Std_Y         |
| Time_GravityAcc_Std_Z        | tGravityAcc_Std_Z         |
| Time_BodyAccJerk_Mean_X      | tBodyAccJerk_Mean_X       |
| Time_BodyAccJerk_Mean_Y      | tBodyAccJerk_Mean_Y       |
| Time_BodyAccJerk_Mean_Z      | tBodyAccJerk_Mean_Z       |
| Time_BodyAccJerk_Std_X       | tBodyAccJerk_Std_X        |
| Time_BodyAccJerk_Std_Y       | tBodyAccJerk_Std_Y        |
| Time_BodyAccJerk_Std_Z       | tBodyAccJerk_Std_Z        |
| Time_BodyGyro_Mean_X         | tBodyGyro_Mean_X          |
| Time_BodyGyro_Mean_Y         | tBodyGyro_Mean_Y          |
| Time_BodyGyro_Mean_Z         | tBodyGyro_Mean_Z          |
| Time_BodyGyro_Std_X          | tBodyGyro_Std_X           |
| Time_BodyGyro_Std_Y          | tBodyGyro_Std_Y           |
| Time_BodyGyro_Std_Z          | tBodyGyro_Std_Z           |
| Time_BodyGyroJerk_Mean_X     | tBodyGyroJerk_Mean_X      |
| Time_BodyGyroJerk_Mean_Y     | tBodyGyroJerk_Mean_Y      |
| Time_BodyGyroJerk_Mean_Z     | tBodyGyroJerk_Mean_Z      |
| Time_BodyGyroJerk_Std_X      | tBodyGyroJerk_Std_X       |
| Time_BodyGyroJerk_Std_Y      | tBodyGyroJerk_Std_Y       |
| Time_BodyGyroJerk_Std_Z      | tBodyGyroJerk_Std_Z       |
| Time_BodyAccMag_Mean         | tBodyAccMag_Mean          |
| Time_BodyAccMag_Std          | tBodyAccMag_Std           |
| Time_GravityAccMag_Mean      | tGravityAccMag_Mean       |
| Time_GravityAccMag_Std       | tGravityAccMag_Std        |
| Time_BodyAccJerkMag_Mean     | tBodyAccJerkMag_Mean      |
| Time_BodyAccJerkMag_Std      | tBodyAccJerkMag_Std       |
| Time_BodyGyroMag_Mean        | tBodyGyroMag_Mean         |
| Time_BodyGyroMag_Std         | tBodyGyroMag_Std          |
| Time_BodyGyroJerkMag_Mean    | tBodyGyroJerkMag_Mean     |
| Time_BodyGyroJerkMag_Std     | tBodyGyroJerkMag_Std      |
| FFT_BodyAcc_Mean_X           | fBodyAcc_Mean_X           |
| FFT_BodyAcc_Mean_Y           | fBodyAcc_Mean_Y           |
| FFT_BodyAcc_Mean_Z           | fBodyAcc_Mean_Z           |
| FFT_BodyAcc_Std_X            | fBodyAcc_Std_X            |
| FFT_BodyAcc_Std_Y            | fBodyAcc_Std_Y            |
| FFT_BodyAcc_Std_Z            | fBodyAcc_Std_Z            |
| FFT_BodyAccJerk_Mean_X       | fBodyAccJerk_Mean_X       |
| FFT_BodyAccJerk_Mean_Y       | fBodyAccJerk_Mean_Y       |
| FFT_BodyAccJerk_Mean_Z       | fBodyAccJerk_Mean_Z       |
| FFT_BodyAccJerk_Std_X        | fBodyAccJerk_Std_X        |
| FFT_BodyAccJerk_Std_Y        | fBodyAccJerk_Std_Y        |
| FFT_BodyAccJerk_Std_Z        | fBodyAccJerk_Std_Z        |
| FFT_BodyGyro_Mean_X          | fBodyGyro_Mean_X          |
| FFT_BodyGyro_Mean_Y          | fBodyGyro_Mean_Y          |
| FFT_BodyGyro_Mean_Z          | fBodyGyro_Mean_Z          |
| FFT_BodyGyro_Std_X           | fBodyGyro_Std_X           |
| FFT_BodyGyro_Std_Y           | fBodyGyro_Std_Y           |
| FFT_BodyGyro_Std_Z           | fBodyGyro_Std_Z           |
| FFT_BodyAccMag_Mean          | fBodyAccMag_Mean          |
| FFT_BodyAccMag_Std           | fBodyAccMag_Std           |
| FFT_BodyBodyAccJerkMag_Mean  | fBodyBodyAccJerkMag_Mean  |
| FFT_BodyBodyAccJerkMag_Std   | fBodyBodyAccJerkMag_Std   |
| FFT_BodyBodyGyroMag_Mean     | fBodyBodyGyroMag_Mean     |
| FFT_BodyBodyGyroMag_Std      | fBodyBodyGyroMag_Std      |
| FFT_BodyBodyGyroJerkMag_Mean | fBodyBodyGyroJerkMag_Mean |
| FFT_BodyBodyGyroJerkMag_Std  | fBodyBodyGyroJerkMag_Std  |
| ---------------------------- | --------------------------- |