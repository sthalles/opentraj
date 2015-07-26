\name{ReadFiles}
\alias{ReadFiles}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Read Files
}
\description{
  The ReadFiles function is a utility function called by function \code{\link{ProcTraj}}. This function reads all the endpoint files output by HYSPLIT, process these files, and put them
  all together in a single file. 
}
\usage{
ReadFiles(working_dir, ID, dates, tz)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{working_dir}{
    String; path to HySplit working directory, this is the location of the endpoint
    trajectory files that will be read by ReadFiles.
}
  \item{ID}{
    Integer: Process ID. When called in Parallel, this ID argument ensures 
    that each process will deal with a separate set of files preventing race 
    condition problems among different processes.
}
  \item{dates}{
    Vector containg all the dates that will be calculated by hysplit.
}
  \item{tz}{
    String; TimeZone e.g "GMT"
}
}
\details{
  Each HYSPLIT endpoints trajectory file has a header containing some information
  about the trajectory it self. In order to put all trajectories together, ReadFile 
  take this header information out. An example of a single trajectory output by HYSPLIT could be:
  \cr
  \cr
    3     1\cr
    CDC1     7     7     1     0     0\cr
    CDC1     7     8     1     0     0\cr
    CDC1     7     9     1     0     0\cr
     1 FORWARD  OMEGA   \cr
     7     8    11    22   50.185  -67.475   100.0\cr
     1 PRESSURE\cr
     1     1     7     8    11    22     0     0     0.0   50.185  -67.475    100.0    953.4\cr
     1     1     7     8    11    23     0     0     1.0   50.033  -67.312     95.3    956.9\cr
     1     1     7     8    12     0     0     0     2.0   49.871  -67.159     90.4    960.0\cr
     1     1     7     8    12     1     0     0     3.0   49.708  -67.009     85.8    962.7\cr
  \cr
  In this example, the ReadFile function would take the header information out, so that, 
  only the four last lines would be used.
  
}

\author{
Thalles Santos Silva
}

\seealso{
  \code{\link{ProcTraj}}
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
