##  Project: Human Activity Recognition  ##################################################


###########################################
# 1 MERGE THE TRAINING AND TEST SETS TO 
#   CREATE ONE DATA SET
###########################################

  wd <-getwd()

# a) Read the test, training sets for x, y, and subject. 


  # TEST  ###########################################
  # test data set for x  
  test.file.x <- "\\UCI HAR Dataset\\test\\X_test.txt"
  test.path.x <- file.path(wd, test.file.x, fsep="")
  test.x <- read.csv(test.path.x, header=FALSE, sep="")
  dim(test.x)

  # test data set for y 
  test.file.y <- "\\UCI HAR Dataset\\test\\y_test.txt"
  test.path.y <- file.path(wd, test.file.y, fsep="")
  test.y <- read.csv(test.path.y, header=FALSE, sep="")
  dim(test.y)

  # test data set for subject  
  test.file.sub <- "\\UCI HAR Dataset\\test\\subject_test.txt"
  test.path.sub <- file.path(wd, test.file.sub, fsep="")
  test.s <- read.csv(test.path.sub, header=FALSE, sep="")
  dim(test.s)


  # TRAINING  ######################################
  # training data set for x
  training.file.x <- "\\UCI HAR Dataset\\train\\X_train.txt"
  training.path.x <- file.path(wd, training.file.x, fsep="")
  train.x <- read.csv(training.path.x, header=FALSE, sep="")
  dim(train.x)

  # training data set for y
  training.file.y <- "\\UCI HAR Dataset\\train\\y_train.txt"
  training.path.y <- file.path(wd, training.file.y, fsep="")
  train.y <- read.csv(training.path.y, header=FALSE, sep="")
  dim(train.y)

  # training data set for subject
  training.file.sub <- "\\UCI HAR Dataset\\train\\subject_train.txt"
  training.path.sub <- file.path(wd, training.file.sub, fsep="")
  train.s <- read.csv(training.path.sub, header=FALSE, sep="")
  dim(train.s)



# b) Merge the test.x with the training.x to create the data.x
#    The same criteria for data.y and data.s

  # merge data: x 
  data.x <- rbind(test.x, train.x)
  dim(data.x)

  # merge data: y 
  data.y <- rbind(test.y, train.y)
  dim(data.y)

  # merge data: subject 
  data.s <- rbind(test.s, train.s)
  dim(data.s)



# c) Merge data.x, data.y, and data.s to create one data set
  data.set <- data.frame(data.s, data.y, data.x)
  dim(data.set);


# d) analyzing data.s: it has 30 items which correspond to the 30 volunteers
  elements.s <- unique(data.s)
  dim(elements.s)


# e) analyzing data.y: it has 6 items which correspond to the 6 activities
  elements.y <- unique(data.y)
  dim(elements.y)


# f) analyzing features file: it has 561 items which correspond to 
#    the 561 column names of the data set (data.set)
  features.file <- "\\UCI HAR Dataset\\features.txt"
  features.path <- file.path(wd, features.file, fsep="")
  features <- read.csv(features.path, header=FALSE, sep="")
  dim(features)


# g) Clean the column names to legalize the proper variable names according to R.
  clean.name <- features
  clean.name <- sapply(clean.name,gsub,pattern="-",replacement="_")
  clean.name <- sapply(clean.name,gsub,pattern=",",replacement=".")
  clean.name <- clean.name[562:1122]
  features$V2 <- clean.name


###########################################
# 2 USE DESCRIPTIVE ACTIVITY NAMES TO NAME ACTIVITIES IN THE DATA SET
###########################################

# h) rename the columns for features in the data set
  features.names <- features$V2
  features.names <- as.vector(features.names)
  column.titles <- append(features.names, c("Volunteer","Activity"), after=0)
  colnames(data.set) <- column.titles


# i) rename the column for activities in the data set
  y.vector <- as.vector(as.matrix(data.y))
  data.set$Activity <- (y.vector=as.factor(c("WALKING",
                            "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                            "SITTING","STANDING","LAYING")[y.vector]))



###########################################
# 3 EXTRACT COLUMNS WITH MEAN AND STANDARD-DEVIATION
###########################################

# j) select a set of columns names with mean measurement from features data set
  mean.list <- features[grepl(pattern="mean", x=features$V2, fixed=TRUE), ]


  # select a set of columns names with standard deviation measurement from features data set
  std.dev.list <- features[grepl(pattern="std", x=features$V2, fixed=TRUE), ]


  # merge a set of columns names with mean and standard deviation measurement
  mean.stdev <- rbind (mean.list, std.dev.list)  #79 observations
  dim(mean.stdev)
  


# k) In the index, add two items: one for Volunteer and one for Activity
  index <- mean.stdev$V1
  index <- as.matrix(index)
  index <- apply(index, 2, function(x) x=x+2)
  index <- as.numeric(index)
  index <- rbind(c(1:2, index))
  dim(index)


# l) subset the data frame to get a data set only containing the mean 
#    and standard desviation measurements 
  index <- as.numeric(index)
  ds.mean.sd <- subset(data.set, select=index)
  dim(ds.mean.sd)
  

# No consider variables for Mag, and meanFreq
  Mag.list <- mean.stdev[grepl(pattern="Mag", x=mean.stdev$V2, fixed=TRUE),]
  drops <- Mag.list$V2
  ds.mean.sd <- ds.mean.sd[,!(names(ds.mean.sd) %in% drops)] 
  dim(ds.mean.sd)

  meanFreq <- mean.stdev[grepl(pattern="meanFreq", x=mean.stdev$V2, fixed=TRUE),]
  drops <- meanFreq$V2
  ds.mean.sd <- ds.mean.sd[,!(names(ds.mean.sd) %in% drops)] 
  dim(ds.mean.sd)




###########################################
# 4 APPROPRIATELY LABELS THE DATA SET WITH DESCRIPTIVE VARIABLES NAMES
###########################################  

# m) name the column variable names friendlier  
  labels <- names(ds.mean.sd)
  labels <- sapply(labels,gsub,pattern="tBody",replacement="time_Body")
  labels <- sapply(labels,gsub,pattern="tGravity",replacement="time_Gravity")
  labels <- sapply(labels,gsub,pattern="fBody",replacement="freq_Body")
  names(ds.mean.sd) <- labels
 


###########################################
# 5 FROM THE DATA SET IN 4) CREATE A TIDY DATA SET
###########################################  

# n) Create a tidy data 

  ds.mean.sd$Volunter_Activity <- paste(ds.mean.sd$Volunteer, 
                                      ds.mean.sd$Activity, sep="-")
  tidy <- aggregate(. ~ Volunter_Activity, data=ds.mean.sd, mean)
  tidy <- tidy[,-c(1)]

  tidy$Activity <- (act.vector=as.factor(c("WALKING",
                                           "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                                           "SITTING","STANDING","LAYING")[act.vector]))
  tidy <- tidy[with(tidy, order(Volunteer, Activity)), ]

#
#
#
#
#
#
#