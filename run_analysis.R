# Current directory must be UCI HAR Dataset/
	# unzipped from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

labels <- read.table('activity_labels.txt')
features <- read.table('features.txt', stringsAsFactors = F)

read_dataset <- function(directory) {
	
	s <- read.table(paste0(directory, '/subject_', directory, '.txt'))
	X <- read.table(paste0(directory, '/X_', directory, '.txt'))
	y <- read.table(paste0(directory, '/y_', directory, '.txt'))
	y[,1] <- labels[y[,1],2]
	
	d <- cbind(s, X, y)
	colnames(d) <- c('subject', features[,2], 'activity')
	d
}

data <- rbind(read_dataset('test'), read_dataset('train'))