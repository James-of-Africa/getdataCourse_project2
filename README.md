#  Getting and Cleaning Data - Project2
Project 2 for the Getting and Cleaning Data Coursera course

Make sure that the dataset https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip is unzipped into your R working directory. This should create the data folder 'UCI HAR Dataset' in your working directory. 

Running the run_analysis.R script from the command line or the repl should generate a summary of the data set in the file 'out.txt'.

See the codebook for more information on the output data structure.

Summary of the run_analysis.R script
* Variable names from the 'features.txt' file are mapped to the data. 
* The training and test datasets are merged together.
* The dataset is filtered down to only the variables that measure mean and standard deviation.
  + i.e variable names that contain '-mean()' or '-std()'
* Activity numbers are mapped to names using the 'activity_labels.txt' file.
* The average of each variable for each activity and each subject is then calculated and written to file 'out.txt'.

For more detail see the comments in the run_analysis.R file
