##  Project: Human Activity Recognition  ##################################################


###########################################
# 1 CREATE ONE DATA SET
###########################################

  wd <-getwd()
# a) MERGING THE TEST AND TRAINING SETS TO CREATE ONE DATA SET

  # TEST
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


  # TRAINING
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


# b) MERGE DATA 

  # merge data: x 
  data.x <- rbind(test.x, train.x)
  dim(data.x)

  # merge data: y 
  data.y <- rbind(test.y, train.y)
  dim(data.y)


  # merge data: subject 
  data.s <- rbind(test.s, train.s)
  dim(data.s)


  # merge data.x, data.y, and data.s to create one data set
  #data.set <- data.frame(data.s, y.descriptive, data.x.mean.stddev)
  data.set <- data.frame(data.s, data.y, data.x)
  dim(data.set);
  View(data.set)


# d) analyzing data.s: it has thirty items which correspond to the volunteers
  elements.s <- unique(data.s)
  dim(elements.s)


# e) analyzing data.y: it has six items which correspond to the activities
  elements.y <- unique(data.y)
  dim(elements.y)


# f) features and column names
  features.file <- "\\UCI HAR Dataset\\features.txt"
  features.path <- file.path(wd, features.file, fsep="")
  features <- read.csv(features.path, header=FALSE, sep="")
  dim(features)



###########################################
# 2 NAME COLUMNS AND ROWS
###########################################

# g) rename the columns for features in the data set
  features.names <- features$V2
  features.names <- as.vector(features.names)
  column.titles <- append(features.names, c("Volunteer","Activity"), after=0)
  colnames(data.set) <- column.titles


# h) rename the column for activities in the data set
  y.vector <- as.vector(as.matrix(data.y))
  data.set$Activity <- (y.vector=as.factor(c("WALKING",
                            "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS",
                            "SITTING","STANDING","LAYING")[y.vector]))



###########################################
# 3 EXTRACT COLUMNS WITH MEAN AND STANDARD-DEVIATION
###########################################

# i) EXTRACT COLUMNS WITH MEAN AND STANDARD DEVIATION MEASUREMENT
  # select a set of columns names with mean measurement from features data set
  mean.list <- features[grepl(pattern="mean", x=features$V2, fixed=TRUE), ]

  # select a set of columns names with standard deviation measurement from features data set
  std.dev.list <- features[grepl(pattern="std", x=features$V2, fixed=TRUE), ]

  # merge a set of columns names with mean and standard deviation measurement
  mean.std.colnames <- rbind (mean.list, std.dev.list)
  dim(mean.std.colnames)

# j) View(std.dev.list);View(mean.list);View(mean.std.colnames)
  index <- mean.std.colnames$V1
  index <- as.matrix(index)
  index <- apply(index, 2, function(x) x=x+2)
  index <- as.numeric(index)
  index <- rbind(c(1:2, index))
  dim(index)


# k) subset the data frame to get a data set only containing the mean 
#    and standard desviation measurements 
  index <- as.numeric(index)
  ds.mean.sd <- subset(data.set, select=index)
  dim(ds.mean.sd)
  View(ds.mean.sd)


###########################################
# 4 APPROPRIATELY LABELS THE DATA SET WITH DESCRIPTIVE VARIABLES NAMES
###########################################  

# l) name the volunter and activities appropiately 
  ds.mean.sd$Volunter_Activity <- paste(ds.mean.sd$Volunteer, 
                                        ds.mean.sd$Activity, sep="-")


###########################################
# 5 FROM THE DATA SET IN 4) CREATE A TIDY DATA SET
###########################################  

# k) 

  tidy <- aggregate(. ~ Volunter_Activity, data=ds.mean.sd, mean)
  tidy <- tidy[,-c(2:3)]
  dim(tidy)
  View(tidy)