#rm(list=ls())  #clean up

#File locations
dataFolder   <- "UCI HAR Dataset"
activitiesF  <- "activity_labels.txt"
featuresF    <- "features.txt"
subFolders   <- c("test","train")
dataF        <- "X_---.txt"
subjectMapF  <- "subject_---.txt"
activityMapF <- "y_---.txt"

#Check for data folder
if(! file.exists(dataFolder) ) stop("The data folder 'UCI HAR Dataset' was not found!\n Please place it in the working directory.")

activities <- read.table(paste0(dataFolder,"/",activitiesF))$V2  # only activities names are needed as the numbers match the position
features   <- read.table(paste0(dataFolder,"/",featuresF))$V2    # only features   names are needed as the numbers match the position

# read "X_---.txt", "subject_---.txt" and "y_---.txt" files renaming cols # 4 Appropriately labels the data set with descriptive variable names. 
#      cbind "X_---.txt", "subject_---.txt" and "y_---.txt" files         # tidy data
# then rbind "test" and "train" folders                                   # 1 Merges the training and the test sets to create one data set.
data       <- data.frame()
for(fld in subFolders) {
  data <- rbind(data, cbind( setNames(read.table(paste0(dataFolder,"/",fld,"/",sub('---',fld,subjectMapF))) , "subject"),
                             setNames(read.table(paste0(dataFolder,"/",fld,"/",sub('---',fld,dataF)))       , features),
                             setNames(read.table(paste0(dataFolder,"/",fld,"/",sub('---',fld,activityMapF))), "activity")  ))
}

#2 Extracts only the measurements on the mean and standard deviation for each measurement. 
data <- data[c("subject", "activity", grep("-mean\\(\\)|-std\\(\\)", names(data), value = T))]

#3 Uses descriptive activity names to name the activities in the data set
data$activity <- as.factor(activities[data$activity])

#5 From the data set in step 4, creates a second, independent tidy data set with the average 
#  of each variable for each activity and each subject.
#  write out  txt file with write.table() and using row.name=FALSE
groups <- split(data[-(1:2)], list(data$subject, data$activity)) # group by the combination of subject and activity

aves <- data.frame(subject=as.numeric(sub("(.*)\\..*","\\1",names(groups))),
                   activity=as.factor( sub(".*\\.(.*)","\\1",names(groups))))        # build subject and activity column
aves <- cbind(aves, do.call("rbind", lapply(groups, function (x) {sapply(x,mean)}))) # cbind in mean values


write.table(aves,'out.txt',row.name=FALSE)



