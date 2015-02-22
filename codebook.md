#DATA DICTIONARY - out.txt

subject
* identifies the person who performed the activity
 + 1 to 30 
 
activity
* activity the person was performing
 + LAYING SITTING
 + STANDING
 + WALKING
 + WALKING_DOWNSTAIRS
 + WALKING_UPSTAIRS

### Other Columns
* these column names are pulled from the 'features.txt' file in the original dataset.
* they contain the mean of the column with the same name in the original dataset (grouped by subject and activity).
* accelerations are measured in standard earth gravity units 'g' (columns with 'Acc' in the name).
* body acceleration is calculated by subtracting the earth gravity from the total acceleration
* angular velocity is measured in radians/second (columns with 'Gyro' in the name).
* see the codebook of the original data for other relevant information.
* a list of these columns follows:
tBodyAcc-mean()-X           tBodyAcc-mean()-Y         tBodyAcc-mean()-Z           tBodyAcc-std()-X            
tBodyAcc-std()-Y            tBodyAcc-std()-Z          tGravityAcc-mean()-X        tGravityAcc-mean()-Y        
tGravityAcc-mean()-Z        tGravityAcc-std()-X       tGravityAcc-std()-Y         tGravityAcc-std()-Z         
tBodyAccJerk-mean()-X       tBodyAccJerk-mean()-Y     tBodyAccJerk-mean()-Z       tBodyAccJerk-std()-X        
tBodyAccJerk-std()-Y        tBodyAccJerk-std()-Z      tBodyGyro-mean()-X          tBodyGyro-mean()-Y          
tBodyGyro-mean()-Z          tBodyGyro-std()-X         tBodyGyro-std()-Y           tBodyGyro-std()-Z           
tBodyGyroJerk-mean()-X      tBodyGyroJerk-mean()-Y    tBodyGyroJerk-mean()-Z      tBodyGyroJerk-std()-X       
tBodyGyroJerk-std()-Y       tBodyGyroJerk-std()-Z     tBodyAccMag-mean()          tBodyAccMag-std()           
tGravityAccMag-mean()       tGravityAccMag-std()      tBodyAccJerkMag-mean()      tBodyAccJerkMag-std()       
tBodyGyroMag-mean()         tBodyGyroMag-std()        tBodyGyroJerkMag-mean()     tBodyGyroJerkMag-std()      
fBodyAcc-mean()-X           fBodyAcc-mean()-Y         fBodyAcc-mean()-Z           fBodyAcc-std()-X            
fBodyAcc-std()-Y            fBodyAcc-std()-Z          fBodyAccJerk-mean()-X       fBodyAccJerk-mean()-Y       
fBodyAccJerk-mean()-Z       fBodyAccJerk-std()-X      fBodyAccJerk-std()-Y        fBodyAccJerk-std()-Z        
fBodyGyro-mean()-X          fBodyGyro-mean()-Y        fBodyGyro-mean()-Z          fBodyGyro-std()-X           
fBodyGyro-std()-Y           fBodyGyro-std()-Z         fBodyAccMag-mean()          fBodyAccMag-std()           
fBodyBodyAccJerkMag-mean()  fBodyBodyAccJerkMag-std() fBodyBodyGyroMag-mean()     fBodyBodyGyroMag-std()      
fBodyBodyGyroJerkMag-mean() fBodyBodyGyroJerkMag-std()
