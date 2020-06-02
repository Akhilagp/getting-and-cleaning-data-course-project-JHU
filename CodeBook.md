# Codebook for Getting and Cleaning data Project

Author: Akhila G P <br/>
Title: Getting and Cleaning data Project <br/>
---

The codebook contains three sections.
- The dataset structure is explained in [Dataset overview](#dataset-overview). 
- The variables in the dataset are listed in the [Variables](#variables) section.
    - The detailed summaries and visualizations performed on the variables is attached in the [mergedData_DataReport.pdf](https://github.com/Akhilagp/getting-and-cleaning-data-course-project-JHU/blob/master/mergedData_DataReport.pdf). 
- The transformations applied on the source data is explained in [Transformations](#transformations) section.


## Dataset overview
The `tidyData.txt` is a text file, containing space-separated values.
The variable names are in the first row followed by the data that has the following dimensions:

| Feature                	| Result 	|
|------------------------	|--------	|
| Number of observations 	| 180    	|
| Number of variables    	| 68     	|


## Variables

Each row in the `tidyData.txt` file for a given subject and a given activity, contains 66 measurements (averaged).

| Variable              	| Class   	| #uniqueValues 	| Missing 	| Description              	|
|-----------------------	|---------	|---------------	|---------	|--------------------------	|
| Subject               	| factor  	| 30            	| 0.00 %  	| subject ID who performed the experiment               	|
| Activity              	| factor  	| 6             	| 0.00 %  	| activity performed by the subject                         	|
| tBodyAcc-mean-X       	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAcc-mean-Y       	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAcc-mean-Z       	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAcc-std-X        	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAcc-std-Y        	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAcc-std-Z        	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tGravityAcc-mean-X    	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tGravityAcc-mean-Y    	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tGravityAcc-mean-Z    	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tGravityAcc-std-X     	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tGravityAcc-std-Y     	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tGravityAcc-std-Z     	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAccJerk-mean-X   	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAccJerk-mean-Y   	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAccJerk-mean-Z   	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAccJerk-std-X    	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAccJerk-std-Y    	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAccJerk-std-Z    	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyro-mean-X      	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyro-mean-Y      	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyro-mean-Z      	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyro-std-X       	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyro-std-Y       	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyro-std-Z       	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyroJerk-mean-X  	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyroJerk-mean-Y  	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyroJerk-mean-Z  	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyroJerk-std-X   	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyroJerk-std-Y   	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyroJerk-std-Z   	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAccMag-mean      	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAccMag-std       	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tGravityAccMag-mean   	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tGravityAccMag-std    	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAccJerkMag-mean  	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyAccJerkMag-std   	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyroMag-mean     	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyroMag-std      	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyroJerkMag-mean 	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| tBodyGyroJerkMag-std  	| numeric 	| 180           	| 0.00 %  	| time domain signals      	|
| fBodyAcc-mean-X       	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAcc-mean-Y       	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAcc-mean-Z       	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAcc-std-X        	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAcc-std-Y        	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAcc-std-Z        	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAccJerk-mean-X   	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAccJerk-mean-Y   	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAccJerk-mean-Z   	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAccJerk-std-X    	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAccJerk-std-Y    	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAccJerk-std-Z    	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyGyro-mean-X      	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyGyro-mean-Y      	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyGyro-mean-Z      	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyGyro-std-X       	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyGyro-std-Y       	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyGyro-std-Z       	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAccMag-mean      	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAccMag-std       	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAccJerkMag-mean  	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyAccJerkMag-std   	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyGyroMag-mean     	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyGyroMag-std      	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyGyroJerkMag-mean 	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|
| fBodyGyroJerkMag-std  	| numeric 	| 180           	| 0.00 %  	| frequency domain signals 	|


## Transformations

The transformations applied to the `UCI HAR Dataset` :

1. The training and test sets were merged to create one data set.
2. The measurements on the mean and standard deviation 
(i.e. features containing the strings mean and std) were extracted for each measurement, and only these features are used for further transformations.
3. The activity names in the dataset (an integer between 1 and 6 representing a activity)  were replaced with descriptive activity names.
4. The variable names were replaced with descriptive variable names and the following modifications were made on them:
    1. Removing special characters (i.e. `(, )`).
    2. Replacing misspelled features (i.e. `BodyBody` with `Body`).
5. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.
