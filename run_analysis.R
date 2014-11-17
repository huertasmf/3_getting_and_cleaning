'
1 Merges the training and the test sets to create one data set.
2 Extracts only the measurements on the mean and standard deviation for each measurement. 
3 Uses descriptive activity names to name the activities in the data set
4 Appropriately labels the data set with descriptive variable names. 
5 From the data set in step 4, creates a second, independent tidy data set 
  with the average of each variable for each activity and each subject.

Good luck!'

###################################################
#
#      Download datafile.zip
#
##################################################

# check if a data folder exists; if not then create one
if (!file.exists("data")) {dir.create("data")}
destfile <- "./data/Human_Activity_Recognition_Smartphones.zip"
if (!file.exists(destfile){
# file URL & destination file
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
# download the file & note the time
download.file(fileUrl, destfile)
dateDownloaded <- date()
}

print(
'Manually extraction from  Human_Activity_Recognition_Smartphones.zip 
is necessary to obtain into data folder the new folder system:
UCI HAR Dataset')

##############                        ###########################
#               LOAD DATA STRUCTURE                             #
##############                        ###########################

## Read the test data 
testdata <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
testdata$type<-"test" #add a column to identify the type of data came from
## Read the training data
traindata <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
traindata$type<-"train" #add a column to identify the type of data came from

## Read all activities 
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt",
                            col.names=c("activity_id","activity_name"))

## Read the features names
features <- read.table("./data/UCI HAR Dataset/features.txt")
feature_names <-  features[,2]

## Read the test subjects
test_subject_id <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
colnames(test_subject_id) <- "subject_id" #name 

## Read the activity id's of the test data and label the the dataframe's columns
test_activity_id <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
colnames(test_activity_id) <- "activity_id" #name

## Read the ids of the train subjects and label the the dataframe's columns
train_subject_id <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
colnames(train_subject_id) <- "subject_id"

## Read the activity id's of the training data and label the dataframe's columns
train_activity_id <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
colnames(train_activity_id) <- "activity_id"

#assign names loaded previosly into features.
colnames(testdata) <- feature_names
colnames(testdata)[562] <-"type" # the last one is the type test or train
colnames(traindata) <- feature_names
colnames(traindata)[562] <-"type" # the last one is the type test or train

##Combine the subject id's, and the  activity id's for both test and train
##and the test data into one dataframe
test_data <- cbind(test_subject_id , test_activity_id , testdata)
train_data <- cbind(train_subject_id , train_activity_id , traindata)

rm(traindata,testdata,train_subject_id ,
   train_activity_id,test_subject_id , test_activity_id  ) #clear this data in memory 

##############                        ###########################
#1  Merges the training and the test sets to create one data set#                             #
##############                        ###########################
all_data <- rbind(train_data,test_data) #merges two tables giving 10299 obs.
rm(train_data,test_data) #clear this data in memory 

subjects<-unique(all_data$subject_id) #Ok gives an array 1:30 subjects
activities<-unique(all_data$activity_id) #Ok gives an array 1:6 activities
  
###############                        ###########################
# 2 Extracts only the measurements on the mean and standard deviation 
#for each measurement.
##############                        ###########################
features[,2] = gsub('mean', 'Mean', features[,2]) #put all with the Upper case
features[,2] = gsub('std', 'Std', features[,2])  #put all with the Upper case
mean.sd  <- grep("Mean|Std", features[,2]) # 86 features, ignore.case = FALSE

all_data.mean.sd <-all_data[, mean.sd]

##############                               ###########################
#3  Uses descriptive activity names to name the activities in the data set#                             #
##############                               ###########################
#change the activity numbers by its label.
all_data$activity_id <- activity_labels[all_data$activity_id , 2]

##############                             ###########################
#4  Appropriately labels the data set with descriptive variable names#                             #
##############                             ###########################
#previosly, see above, the column names have been assigned and they are descriptives.
#the names are cleaned by remove ( ) and change '-' and ',' by '_'
new_names<-  gsub('[()]', '', names(all_data))
new_names<-  gsub('[-,]', '_', new_names)
names(all_data)<-new_names #assign new names

##############                                      ###########################
#5  From the data set in step 4, creates a second, independent tidy data set  #
#   with the average of each variable for each activity and each subject      #                             #
##############                                      ###########################
all_data$subject_id <- as.factor(all_data$subject_id) #make as factor variable.
all_data  <- all_data[,1:563] #remove type var
tidy_data <- aggregate(all_data, by=list(activity=all_data$activity_id, subject=all_data$subject_id), mean)
## Create a file with the new tidy dataset
tidy_data[,3]<-NULL #remomve column activity_id and subct_id
tidy_data[,3]<-NULL #remomve column activity_id and subct_id
write.table(tidy_data,"./tidy_data.txt",row.name=FALSE) #give a table 180x563

'__________________________ END _____________________________________'
#others activities to get documentation.
write.table(new_names,"features_names.txt",row.name=FALSE,col.name=FALSE) 

