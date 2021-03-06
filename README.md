# README.md

---
Author: Akhila G P <br/>
Title: Getting and Cleaning data Project

---

## Files Submitted

| Item description         	| Link 	                                |
|-------------------------	|-------------------------------------- |
| Github repository         | [repo link](https://github.com/Akhilagp/getting-and-cleaning-data-course-project-JHU)                        |
| R script to do analysis 	| [run_analysis.R](https://github.com/Akhilagp/getting-and-cleaning-data-course-project-JHU/blob/master/run_analysis.R)     	            |
| Tidy data set           	| [tidyData.txt](https://github.com/Akhilagp/getting-and-cleaning-data-course-project-JHU/blob/master/tidyData.txt)     	            |
| Codebook                	| [CodeBook.md](https://github.com/Akhilagp/getting-and-cleaning-data-course-project-JHU/blob/master/CodeBook.md)     	                |
| README                  	| [README.md](https://github.com/Akhilagp/getting-and-cleaning-data-course-project-JHU/blob/master/README.md)     	                |
| Codebook- detailed      	| [mergedData_DataReport.pdf](https://github.com/Akhilagp/getting-and-cleaning-data-course-project-JHU/blob/master/mergedData_DataReport.pdf)     	|

This README.md contains the following sections

- [Goal of the project](#goal)
- [Context of the project](#context)
- [Dataset information](#dataset-description)
- [Script explanation and usage](#script-used-in-processing)

## Goal

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
1. A tidy data set 
2. Link to a Github repository with your script for performing the analysis.
3. A code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
4. You should also include a README.md in the repo with your scripts. It explains how all of the scripts work and how they are connected.

## Context

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here are the data for the project:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

## Dataset description

Name of the dataset: [Human Activity Recognition Using Smartphones Dataset Version 1.0](https://www.smartlab.ws)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

### For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label.
- An identifier of the subject who carried out the experiment.

## Script used in processing

The script `run_analysis.R` is used to perform the processing. It needs to be placed in the same directory as the `UCI HAR Dataset`. The output is the text file `tidyData.txt` and it's codebook is presented in [CodeBook.md](https://github.com/Akhilagp/getting-and-cleaning-data-course-project-JHU/blob/master/CodeBook.md).

The R script `run_analysis.R` performs the following steps.

1. Merges the training and the test sets to create one data set.<br/>
The dataset is unzipped and the train files `X_train`, `y_train` and the file containing subject IDs `subject_train` in the `train` directory are combined to form the `train` data. The test files `X_test`, `y_test` and the file containing subject IDs `subject_test` in the `test` directory are combined to form the `test` data. Both the `train` and `test` are combined to form the data `merged`.

2. Extracts only the measurements on the mean and standard deviation for each measurement. The columns containing the string `mean()` or `std()` are only extracted and used.

3. Uses descriptive activity names to name the activities in the data set. The activity names can be found in the `activity_labels.txt` file.

4. Appropriately labels the data set with descriptive variable names.

5. From the data set in step 4, it creates a second, independent tidy data set with the average of each variable for each activity and each subject is created and stored in text file `tidyData.txt`.


