\name{Df2SpLinesDf}
\alias{Df2SpLinesDf}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Data Frame to Spatial Lines Data Frame
}
\description{
This function converts an object of class \code{\link{SpatialLines-class}}, calculated by the  function \code{\link{Df2SpLines}}, into an Object of class SpatialLinesDataFrame.
}
\usage{
  Df2SpLinesDf(spLines, df, add.distance=F, add.azimuth=F)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{spLines}{
    Object of class \code{\link{SpatialLines-class}} calculated by the function \code{\link{Df2SpLines}}.
}
  \item{df}{
    \code{\link{data.frame}} Object created by the function \code{\link{ProcTraj}}.
}
  \item{add.distance}{
    Logical: If True, it will calculate and include the distance in meters between the first and last point for every line.
}
  \item{add.azimuth}{
    Logical: If True it will calculate and include the azimuth for every line.
}
}
\details{
Because the additional information carried by the SpatialLinesDataFrame Object have
to be a data frame with same number of lines as the number of lines in the SpatialLines Object,
the additional information, which each line of the SpatialLinesDataFrame will have,
concerns to the first row of an individual trajectory from the data frame calculated 
by the function \code{\link{ProcTraj}}
}

\value{
Returns an object of class SpatialLinesDataFrame.
}

\author{
Thalles Santos Silva
}

\seealso{
\code{\link{Df2SpLines}}, \code{\link{ProcTraj}}, \code{\link{SpatialLines-class}}, \code{\link{data.frame}}.
}

\examples{
  crs <- "+proj=longlat +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0"
  air.traj.lines <- Df2SpLines(air.traj, crs)
  air.traj.linesDf <- Df2SpLinesDf(air.traj.lines, air.traj)
  PlotTraj(air.traj.linesDf)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Lines }
\keyword{ Trajectories }% __ONLY ONE__ keyword per line
