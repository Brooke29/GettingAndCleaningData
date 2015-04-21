# GettingAndCleaningData
##Course Project

You are in the GettingAndCleaningData repository. In this repo, you will find:

This **ReadMe.md** file.

**UCI HAR Dataset directory** : includes original data for this project.

**run\_analysis.html** : an html file knitted from run\_analysis.Rmd. This file contains a complete step-by-step description of the script outlined in run_analysis.R below, including all appropriate code output (which is done automatically when running knit HTML in R Studio). If you are grading this project, it will provide you with a more convenient way to see every step listed below than viewing run\_analysis.R. It also includes an explanation as to why the resulting dataset is tidy.

***Important Note**: to be able to view **run\_analysis.html** as an html output rather than a source code on GitHub, please follow these easy steps:

1. Click on **run\_analysis.html**, to open it as a source code page. 
2. Copy the url of the page.
3. Paste the link into this page: [http://htmlpreview.github.io/](http://htmlpreview.github.io/).You can now read the html output!
 

**run\_analysis.Rmd**: the source for the run\_analysis.html file above. 

**run_analysis.R** : an R-scrpt file with the script that does the following:

  * Merges the training and test sets of data from the UCI HAR Dataset directory into one dataset.  
  * Extracts only the measurements on the mean and Standard Deviation for each measurement.  
  * Uses descriptive activity names to name the activities in the resulting dataset.  
  * Appropriately labels the dataset with descriptive variable names. 
  * Creates a tidy dataset with the average of each variable for each activity and each subject.

**tidy.txt** : this txt file contains the tidy dataset created in step 5 of the R script. To read it into R, download it in your working directory and use the following code:

     data <- read.table(file_path, header = TRUE)

To view several rows & columns of the tidy dataset, use:

    head(data)[im:in, jm:jn]

**codebook.md**: codebook with the information about the variables in the tidy dataset.