# Notes: ####
	# Current directory must be UCI HAR Dataset/
	# unzipped from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# 1. Merge datasets ####

labels <- read.table('activity_labels.txt')
features <- read.table('features.txt', stringsAsFactors = F)

read_dataset <- function(directory) {
	
	s <- read.table(paste0(directory, '/subject_', directory, '.txt'))
	X <- read.table(paste0(directory, '/X_', directory, '.txt'))
	y <- read.table(paste0(directory, '/y_', directory, '.txt'))
	
	# 3. Appropriately labels the data set with descriptive variable names.
	y[,1] <- labels[y[,1],2]
	
	cbind(s, X, y)
}

data <- rbind(read_dataset('test'), read_dataset('train'))

# 4. Appropriately labels the data set with descriptive variable names. 
colnames(data) <- c('subject', features[,2], 'activity')
rm('features', 'labels')

# 2. Extract mean and sd measurements only ####
data <- data[,c(1, grep('(mean|std)\\(\\)', colnames(data)), dim(data)[2])]
