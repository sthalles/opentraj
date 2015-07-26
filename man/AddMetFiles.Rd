\name{AddMetFiles}
\alias{AddMetFiles}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
  Add meteorological file path 
}
\description{
  This Utility function is called bt ProcTraj and should not be used independetly. 
  AddMetFiles helps in the process of creating the CONTROL files for HYSPLIT.
}
\usage{
AddMetFiles(month, Year, met, script.file, control.file)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{month}{
    Integer; month of the meteorological file to be added.
}
  \item{Year}{
    Integer; Year of the meteorological file to be added.
}
  \item{met}{
    String; Path to the meteorological files.
}
  \item{script.file}{
    String; name of the script that is being created by ProcTraj.
}
  \item{control.file}{
    String; Control file name.
}
}
\details{
AddMetFiles is called by ProcTraj is a loop which ensures that always three meteorological data files will be added for each CONTROL file, one for the current month, one for the previous month and another one for the following month. This function assumes that the meteorological files were downloaded from HYSPLIT, so that, they have the following name structure: "RP<Year><Month>.gbl". For example, for Year = 2007 and Month = 06, the meteorological file name would be: "RP200706.gbl"
}

\author{
  Thalles Santos Silva
}

\seealso{
  \code{\link{ProcTraj}}
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Meteorology }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
