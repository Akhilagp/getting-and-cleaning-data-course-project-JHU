# This script performs the following functions
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.

#getting current directory's location
currentWD <- getwd()

#download and unzipping dataset if it's not present in the same directory as this R script.
if(!"UCI HAR Dataset" %in% list.dirs(path = currentWD, full.names = F, recursive = F)){
    print("Downloading dataset...")
    datasetURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    datasetFile <- download.file(datasetURL,destfile = file.path(currentWD,"datasetZip.zip"), method = "curl")
    unzip(zipfile = file.path(currentWD,"datasetZip.zip"))
    print("Dataset downloaded and unzipped...")
}

#loading required packages
lapply(c("data.table","dplyr","reshape2"), require,quietly=T,character.only=T) 

#setting the path to the directory where the dataset is
datasetDir <-paste(currentWD,"UCI HAR Dataset", sep = "/")

#loading the activity labels
activityLabels <- fread(file.path(datasetDir,"activity_labels.txt"), col.names = c("Label","Activity"))

#loading the features of the dataset
featureListed <- fread(file.path(datasetDir,"features.txt"), col.names = c("featureLabel","feature"))

#regex to get features that contain either mean() or std()
#getting index of features that match the pattern
featuresNeeded <- grep("(mean|std)+[()]",featureListed$feature)

#getting names of features that match the pattern
featuresNeededValue <- grep("(mean|std)+[()]",featureListed$feature, value = T)
#removing special characters (, ) and fixing spelling errors
featuresNeededValue <- gsub("[()]","", featuresNeededValue)
misspelledFeatures <- grep("(Body){2}",featuresNeededValue, value =T)
featuresNeededValue[which(featuresNeededValue==misspelledFeatures)] <- sub("(Body)","",misspelledFeatures)

#loading training and testing data...

#selecting columns with only the measurements on the mean and standard deviation for each measurement.
trainX <- fread(file.path(datasetDir,"train","X_train.txt"), select = featuresNeeded)
testX <- fread(file.path(datasetDir,"test","X_test.txt"), select = featuresNeeded)

#labeling dataset with descriptive variable names
names(trainX) <- featuresNeededValue
names(testX) <- featuresNeededValue

trainY <- fread(file.path(datasetDir,"train","y_train.txt"), colClasses = "factor", col.names = "Activity")
testY <- fread(file.path(datasetDir,"test","y_test.txt"), colClasses = "factor", col.names = "Activity")

#labeling activity names in the dataset with descriptive activity names.
levels(trainY$Activity) <- activityLabels$Activity
levels(testY$Activity) <- activityLabels$Activity

trainSubject <- fread(file.path(datasetDir,"train","subject_train.txt"), col.names = "Subject")
testSubject <- fread(file.path(datasetDir,"test","subject_test.txt"), col.names = "Subject")

#combining column wise to get the complete training and testing data
train <- cbind(trainSubject, trainX, trainY)
test <- cbind(testSubject, testX, testY)


#Merges the training and the test sets to create one data set
merged <- rbind(train, test)
merged$Subject <- as.factor(merged$Subject)

#for each activity and each subject, the average of each variable is calculated
mergedData <- melt(data = merged, id = c("Subject","Activity"))
mergedData <- dcast(data = mergedData, formula = Subject + Activity ~ variable, fun.aggregate = mean)

#writing the tidy dataset to a txt file in the same directory as this R script.
write.table(mergedData, file=file.path(currentWD,"tidyData.txt"), row.names = F)

#alternative solution using tidyr
# gathered <- merged %>%
#                  gather(key = "featureName","featureValue", -Subject,-Activity)
# spreaded <- gathered %>%
#                 group_by_at(vars(-featureValue)) %>%
#                     summarise(meanfeatureValue = mean(featureValue)) %>%
#                         spread(value =-Subject,-Activity) %>%
#                             write.table(file.path(currentWD,"tidyData.txt"), row.names=F)