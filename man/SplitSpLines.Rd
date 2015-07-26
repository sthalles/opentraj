\name{SplitSpLines}
\alias{SplitSpLines}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Split Spatial Lines
}
\description{
  This function divides an object of class \code{\link{SpatialLines-class}} defined by the argument 
  [sp.lines] into a number of sub sets of SpatialLines defined by the argument [into].
}
\usage{
  # divides the SpatialLines Object into 8 sub sets of SpatialLines
  SplitSpLines(sp.lines, into)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sp.lines}{
    Object of class \code{\link{SpatialLines-class}} calculated by the function \code{\link{Df2SpLines}}.
  }
  \item{into}{
    Number of times that the sp.lines object must be divided.
  }
}
\details{
If the number provided by the argument [into] is not multiple of the number of lines in the SpatialLines object, the last element of the list will contain a SpatialLines object with more lines than the first ones. Thus, the original SpatialLines object will not be equally divided. 

Although this function might be used seperately, the SplitSpLines function is called by 
the \code{\link{RasterizeTraj}} function in order to split the spLines and hence, 
do the process in parallel.

}

\value{
  Returns a list of SpatialLines Object.
}

\author{
  Thalles Santos Silva
}

\seealso{
  \code{\link{SpatialLines-class}}, \code{\link{Df2SpLines}}.
}

\examples{
## split the SpatialLines object in a list with 8 SpatialLines objects

crs <- "+proj=longlat +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0"
air.traj.lines <- Df2SpLines(air.traj, crs)

lines.list <- SplitSpLines(air.traj.lines, 8)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Split }
\keyword{ SpatialLines }% __ONLY ONE__ keyword per line
