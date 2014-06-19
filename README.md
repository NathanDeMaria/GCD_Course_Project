GCD_Course_Project
==================

For Coursera's Getting and Cleaning Data course project

<h1>Scripts</h1>
<h3>run_analysis.R</h3>

To run this script, the current working directory must be "UCI HAR Dataset/", unzipped from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

When the script runs:
- Labels and features are read in straight from their own text files.
- A function for reading a data folder is created
  - This function joins together the subject, X, and y files from each folder
  - Specific activity names replace numeric activity names in this function as well
  - The <code>train</code> and <code>test</code> datasets are read in using this function, then joined.
- Column names are added, subsetted, and then formatted
- The average of each column for each subject and activity

<h5>Note</h5>
The <code>ddplyr</code> package is required to run the portion of the code used to calculate the summary dataset.
