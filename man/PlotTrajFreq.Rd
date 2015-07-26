\name{PlotTrajFreq}
\alias{PlotTrajFreq}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Plot Trajectory Frequency
}
\description{
This function is designed to display a trajectory frequency map that was output by
function \code{\link{RasterizeTraj}}.
}
\usage{
PlotTrajFreq(spGridDf, background = T, overlay = NA,
  overlay.color = "white", pdf = F, file.name = "output", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{spGridDf}{
    SpatialGridDataFrame Object obtained by the convertion of the 
    raster Object output by the \code{\link{RasterizeTraj}} function.
}
  \item{background}{
    Boolean: Indicates whether or not the Canadian's background map should be displayed.
}
  \item{overlay}{
    [Optional] If defined, it takes a SpatialPolygonsDataFrame as input and plots 
    it over the spGridDf. 
}
  \item{overlay.color}{
    String. sets the Polygons' color defined by the overlay argument e.g. "blue"
}
  \item{pdf}{
    Defines whether or not the output map should be saved in a pdf file.
}
  \item{file.name}{
    String: If the argument pdf is True, this argument defined the name of the output file.
}
  \item{\dots}{
    Further arguments to be passed to the generic function plot.
}
}
\details{
Since the function RasterizeTraj outputs a RasterLayer object, this Object
must be converted to a SpatialGridDataFrame Object using the 
as(rasterObject, "SpatialGridDataFrame") for example.
}

\value{
  Trajectory Frequency Map
}

\author{
Thalles Santos Silva
}

\seealso{
  \code{\link{RasterizeTraj}}
}

\examples{
  library(raster)
    
  crs <- "+proj=longlat +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0"
  air.traj.lines <- Df2SpLines(air.traj, crs)
  raster.lines <- RasterizeTraj(air.traj.lines, reduce=TRUE, resolution=15000, parallel=FALSE)
    
  r.max.value <- maxValue(raster.lines)
  v <- getValues(raster.lines)
  v <- v / r.max.value
  r <- setValues(raster.lines, v)
    
  ## convert raster object to SparialGridDataFrame Object
  r1 <- as(r, "SpatialGridDataFrame")
    
  PlotTrajFreq(r1, background = TRUE, main="Title", pdf=FALSE)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Air Trajectory }
\keyword{ Trajectory Frequency }% __ONLY ONE__ keyword per line
