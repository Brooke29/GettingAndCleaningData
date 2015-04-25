
The features selected for the **original** database came from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

The set of variables that were estimated from these signals are: 

**mean(): Mean value**  
**std(): Standard Deviation**  

and others.


For the **tidy dataset**, only the measurements on **the mean and Standard Deviation** were extracted; and **the average of each variable for each activity and each subject** was presented. Likewise, the variable names were changed to more descriptive names compared to the original (no abbreviations).


####Below is the complete list of all 68 variables in the tidy dataset (tidy.txt):

- subject (30 subjects in total) 
- activity (factor variable with 6 levels: laying, sitting, standing, walking, walking downstairs & walking upstairs)   
 **Means of the following measurements:**
1. timeBodyAccelerometer-mean()-X               
1. timeBodyAccelerometer-mean()-Y            
1. timeBodyAccelerometer-mean()-Z 
1. timeGravityAccelerometer-mean()-X             
1. timeGravityAccelerometer-mean()-Y            
1. timeGravityAccelerometer-mean()-Z             
1. timeBodyAccelerometerJerk-mean()-X            
1. timeBodyAccelerometerJerk-mean()-Y            
1. timeBodyAccelerometerJerk-mean()-Z            
1. timeBodyGyroscope-mean()-X                   
1. timeBodyGyroscope-mean()-Y                    
1. timeBodyGyroscope-mean()-Z                   
1. timeBodyGyroscopeJerk-mean()-X                
1. timeBodyGyroscopeJerk-mean()-Y                
1. timeBodyGyroscopeJerk-mean()-Z               
1. timeBodyAccelerometerMagnitude-mean()        
1. timeGravityAccelerometerMagnitude-mean()     
1. timeBodyAccelerometerJerkMagnitude-mean()     
1. timeBodyGyroscopeMagnitude-mean()             
1. timeBodyGyroscopeJerkMagnitude-mean()         
1. frequencyBodyAccelerometer-mean()-X           
1. frequencyBodyAccelerometer-mean()-Y          
1. frequencyBodyAccelerometer-mean()-Z           
1. frequencyBodyAccelerometerJerk-mean()-X       
1. frequencyBodyAccelerometerJerk-mean()-Y       
1. frequencyBodyAccelerometerJerk-mean()-Z      
1. frequencyBodyGyroscope-mean()-X               
1. frequencyBodyGyroscope-mean()-Y               
1. frequencyBodyGyroscope-mean()-Z               
1. frequencyBodyAccelerometerMagnitude-mean()    
1. frequencyBodyAccelerometerJerkMagnitude-mean()
1. frequencyBodyGyroscopeMagnitude-mean()  
1. frequencyBodyGyroscopeJerkMagnitude-mean()      
1. timeBodyAccelerometer-std()-X                 
1. timeBodyAccelerometer-std()-Y                
1. timeBodyAccelerometer-std()-Z                 
1. timeGravityAccelerometer-std()-X              
1. timeGravityAccelerometer-std()-Y              
1. timeGravityAccelerometer-std()-Z              
1. timeBodyAccelerometerJerk-std()-X             
1. timeBodyAccelerometerJerk-std()-Y             
1. timeBodyAccelerometerJerk-std()-Z             
1. timeBodyGyroscope-std()-X                     
1. timeBodyGyroscope-std()-Y                    
1. timeBodyGyroscope-std()-Z                     
1. timeBodyGyroscopeJerk-std()-X                 
1. timeBodyGyroscopeJerk-std()-Y                 
1. timeBodyGyroscopeJerk-std()-Z                 
1. timeBodyAccelerometerMagnitude-std()          
1. timeGravityAccelerometerMagnitude-std()       
1. timeBodyAccelerometerJerkMagnitude-std()      
1. timeBodyGyroscopeMagnitude-std()              
1. timeBodyGyroscopeJerkMagnitude-std()          
1. frequencyBodyAccelerometer-std()-X            
1. frequencyBodyAccelerometer-std()-Y            
1. frequencyBodyAccelerometer-std()-Z            
1. frequencyBodyAccelerometerJerk-std()-X        
1. frequencyBodyAccelerometerJerk-std()-Y        
1. frequencyBodyAccelerometerJerk-std()-Z        
1. frequencyBodyGyroscope-std()-X                
1. frequencyBodyGyroscope-std()-Y                
1. frequencyBodyGyroscope-std()-Z                
1. frequencyBodyAccelerometerMagnitude-std()     
1. frequencyBodyAccelerometerJerkMagnitude-std() 
1. frequencyBodyGyroscopeMagnitude-std()        
1. frequencyBodyGyroscopeJerkMagnitude-std() 
