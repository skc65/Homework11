# In class, you told me not to worry about Question 1a because I am using a Windows computer.

copy_dir2 <- function(dirname, prefix_string)
{
  dir.create(paste(prefix_string,dirname,sep=""))
  x<-getwd()
  setwd(paste(x,paste(prefix_string,dirname,sep=""),sep="/"))
  file.create(paste(prefix_string,"file1"))
  file.create(paste(prefix_string,"file2"))
  setwd(x)
}