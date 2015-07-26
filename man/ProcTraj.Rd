\name{ProcTraj}
\alias{ProcTraj}

\title{
Process Trajectory
}
\description{
The ProcTraj function is responsible for all setup and execution of the HySplit model.
}

\usage{
  ProcTraj(lat = 51.5, lon = -45.1,
                     hour.interval = 1, name = "london",
                     start.hour = "00:00", end.hour="23:00",
                     met, 
                     out, 
                     hours = 12, height = 100, 
                     hy.path, ID = 1,
                     dates, script.name="test",
                     add.new.column = F, new.column.name, new.column.value,
                     tz = "GMT", clean.files = TRUE)
}

\arguments{
  \item{lat}{
    Numeric: Initial point's Latitude.
}
  \item{lon}{
    Numeric: Initial point's Longitude.
}
  \item{hour.interval}{
    Integer: This value specifies the hour interval when each trajectory will be calculated. 
}
  \item{name}{
    String: Name of the trajectory endpoints file.
}
  \item{start.hour}{
    String: Specifies the START hour of the simulation. An example would be: start.hour = "12:00".
}
  \item{end.hour}{
    String: Specifies the END hour of the simulation. An example would be: start.hour = "14:00".
}
  \item{met}{
    String: Directory location of the meteorological file. More information 
    concerning to meteorological files can be found in 
    http://www.meteozone.com/home/tutorial/html/meteo_ftp.html.  
}
  \item{out}{
    String: Directory location to which the [output.RData] trajectory end-point 
    files will be written. Always terminate with the appropriate slash
    (\\ or /). If this argument is omitted, the output will only be returned by the
    function instead of be saved on the local memory. Also, when [out] is omitted,
    the argument [name] will not be used.
}
  \item{hours}{
    Integer: Total run time. It specifies the duration of the calculation 
    in hours. Backward calculations are entered as negative values. 
    A backward trajectory starts from the trajectory termination point 
    and proceeds upwind. Meteorological data are processed in reverse-time order. 
    Because only two additional meteorological files are loaded, 
    one for the previous and another for the next month, it is recommended 
    a maximum trajectory length of 24 hours.
}
  \item{height}{
    numeric: The initial trajectories height. Height is entered as meters above ground-level.
}
  \item{hy.path}{
    String: The local path where HySplit is located. Example, for 
    linux/OS X Operating Systems "/home/user/Desktop/hysplit/trunk/"
}
  \item{ID}{
    Integer: Process ID. When called in Parallel, the ID argument ensures 
    that each process will deal with separate set of files preventing race 
    condition problems among different processes.
}
  \item{dates}{
    Vector containg all the dates that will be calculated by hysplit.
}
  \item{script.name}{
    String: Name of the script file that will run HySplit, Default value: "script"
}
  \item{add.new.column}{
    Boolean;
}
  \item{new.column.name}{
    String:
}
  \item{new.column.value}{
    Any Value
}
  \item{tz}{
    String: This argument specifies the Time Zone to be applied, e.g. "GMT"
}
  \item{clean.files}{
    Boolean: If TRUE, all the files created by HySplit will be deleted. 
    }
}
\details{
  In order to make the input files for HySplit consistent, the ProcTraj function
  will always load 3 meteorological files for a specific month. For example, 
  for the month of January 2014, it will load the meteorological files from 
  December of 2013, January of 2014, and February of 2014.
}

\value{
  ProcTraj returns a data frame with the pre-calculated HySplit forward or backward trajectories.
  If the [out] argument is specified with a valid path, ProcTraj will save the 
  data frame with pre-calculated HySplit forward or backward trajectories in
  the system local storage. 
}

\author{
Thalles Santos Silva
}

\examples{
##---- For Windows system 


##---- For Unix alike systems 

# library("opentraj")
# library("doParallel")
# 
# ########################
# # SETUP VARIABLES
# kYear <- 2007
# KHeight <- 100
# 
# # path to meteorological files
# # you have to make sure this path is consistent 
# # for information on how to get HySplit Meteorological data,
# # http://www.arl.noaa.gov/documents/workshop/Spring2011/HYSPLIT_Tutorial.pdf
# KMetFiles <- "/path/to/the/meteorological/files/"
# 
# KOutFiles <- "/path/output/files/"
# 
# # HySplit instalation path
# KHySplitPath <- "/path/to/hysplit/"
# 
# # load the defoliation point file
# data(pheno2007)
# 
# # convert the dates to objects of class Date
# pheno2007$Year.Month.Day <-as.Date(pheno2007$Year.Month.Day)
# 
# # subset the data, in order to get only the points with ID = 1
# pointsDf<-split(pheno2007, pheno2007$ID)
# 
# # get the number of phisical cores availables
# cores <- detectCores()
# # 
# cl <- makeCluster(cores)
# 
# registerDoParallel(cl)
# 
# start.time<-Sys.time()
# 
# hy.traj2007 <- 
#   foreach(i = 1:length(pointsDf), .packages="opentraj", .combine = rbind) \%dopar\%
# {
#   points <- pointsDf[[i]]
#   
#   # get the point's latitude and longitude
#   lat<-points[[2]][1]
#   long<-points[[3]][1]
#   
#   dates <- points$Year.Month.Day
#   
#   ########################
#   output.file.name<-""
#   output.file.name<-paste("pheno", "_", as.character(i), "_", sep="")
#   
#   ProcTraj(lat = lat, lon = long, year = Year, name = output.file.name,
#            hour.interval = 1,
#            met = KMetFiles, out = KOutFiles, 
#            hours = 3, height = KHeight, hy.path = KHySplitPath, ID = i, dates=dates,
#            start.hour = "19:00", end.hour="23:00",
#            tz="EST", clean.files=F) 
# }
# 
# end.time<-Sys.time()
# time.taken<-end.time - start.time 
# time.taken
# 
# stopCluster(cl)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Air Trajectory }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
