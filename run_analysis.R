#Please see run_analysis.html (run_analysis.Rmd) for a more conveniet and reader-friendly view of this script.

#The data for this project can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#To run the code, please download the data and make URI HAR Dataset your working directory.

#Packages required for the project:

library(data.table)
library(dplyr)

# Step 1: Merge the training and test sets to create 1 data set:

# The files in the dataset can be divided into three main groups:
# Subject: values come from subject train and test files.  
# Activity: values come from X train and test files.  
# Features: values come from Y train and test files.  

#Names of variable Features come from features.txt file, and levels of variable Activity come from activity_labels.txt files.  

#Read the datasets into R:

#Subject:

subjectTrain<-read.table("train/subject_train.txt")
subjectTest<-read.table("test/subject_test.txt")

#Activity:

activityTrain<-read.table("train/y_train.txt")
activityTest<-read.table("test/y_test.txt")

#Features:

featuresTrain<-read.table("train/X_train.txt")
featuresTest<-read.table("test/X_test.txt")

#Read the labels/names into R:

activity_labels<-read.table("activity_labels.txt", header=FALSE)
feat_names<-read.table("features.txt")

#Merge the subject (train & test), Activity (train & test) and Features (train & test) data using rbind():

subject<-rbind(subjectTrain, subjectTest)
activity<-rbind(activityTrain,activityTest)
features<-rbind(featuresTrain,featuresTest)

#Set names for the variables in the resulting datasets:

names(subject)<-"subject"
names(activity)<-"activity"
names(features)<-as.character(feat_names[,2])

#Finally, merge the resulting three datasets into one using cbind():  

data<-cbind(subject,activity, features)

#Clean the unnecessary data from the workspace:

rm(subjectTrain,subjectTest,activityTrain,activityTest,featuresTrain,featuresTest, subject,activity,features)

# Step 2: Extract only the measurements on the mean & SD for each measurement:

#Column Indices for columns with means and standard deviations:

Means<-grep("mean()", colnames(data))
SDs<-grep("std()", colnames(data))
MeansAndSDs<-c(Means,SDs)

#Extract the above-indiced columns (while keeping the variables "subject" and "activity" in columns 1 and 2, respectively):

newdata<-data[, c(1,2,MeansAndSDs)]

#Let's take a look at str(newdata):

str(newdata)

#We can remove the columns with the meanFreq measurements:

NewData<-newdata[, !grepl("Freq", colnames(newdata))]

#We currently have a dataset with only the measurements on the mean and SD for each measurement.

# Step 3: Use descritive activity names to name the activities in the dataset:

#To do that, we will be using the file activity_labels.txt (which we have preveiously read into activity_labels dataframe).  
#Change variable activity from numerical to character, so that it would accept activity names; assign activity names from
#activity_labels; factorise variable activity.

NewData$activity<-as.character(NewData$activity)
for (i in 1:6){NewData$activity[NewData$activity==i]<-as.character(activity_labels[i,2])}
NewData$activity<-as.factor(NewData$activity)

#Check:

class(NewData$activity)

head(NewData$activity, 10)

# Step 4: Appropriately label the dataset with descriptive variable names:

#Let's take a look at our variable names:

names(NewData)

#Having examined our variable names, we can make the following changes:

names(NewData)<-gsub("^t", "time", names(NewData))
names(NewData)<-gsub("^f", "frequency", names(NewData))
names(NewData)<-gsub("Acc", "Accelerometer", names(NewData))
names(NewData)<-gsub("Gyro", "Gyroscope", names(NewData))
names(NewData)<-gsub("Mag", "Magnitude", names(NewData))
names(NewData)<-gsub("BodyBody", "Body", names(NewData))

#Let's take another look at our variable names after the change:

names(NewData)

#They are now significantly more descriptive than they were when they were abbreviated.

# Step 5: From the dataset in step 4, create a 2nd, tidy dataset with the average of each variable for each activity and each subject:

#Creating a tidy dataset with the average of each variable for each activity and each subject, using the aggregate() function from the dplyr package (that we have uploaded in the beginning):
    
TidyData<-aggregate(.~subject+activity, NewData, mean)

#Creating a txt file containing our tidy data set, using the write.table() function from the data.table package:
 
write.table(TidyData, file="C:/Users/User/rpractice/GettingAndCleaningData/tidy.txt", row.names=FALSE)

#The resulting dataset satisfies the conditions for a tidy dataset:
    
#* Each variable we measured is in one column (see codebook for a complete list of all 68 variables).  
#* Each different observation forms a row (we have 30 subjects and 6 levels of activity (laying, sitting, standing, walking, walking downstairs & walking upstairs): a total of 180 rows of observations). 
#* Each type of observational unit forms a table.





