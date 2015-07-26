\name{PlotBgMap}
\alias{PlotBgMap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Plot Background Map
}
\description{
  This function is called by functions \code{\link{PlotTraj}} and \code{\link{PlotTrajFreq}} 
  just to add map's background.
}
\usage{
  PlotBgMap(traj, ...)
}

\arguments{
  \item{traj}{
    SpatialLines or SpatialLinesDataFrame object calculated by functions Df2SpLines or
    Df2SpLinesDf. PlotBgMap uses this object (traj) to get the bounding box values for drawing the map.
}
  \item{\dots}{
    Further arguments to the generic plot function.
}
}
\details{
  This function uses the preloaded data set canada.map.
}

\author{
Thalles Santos Silva
}

\seealso{
  \code{\link{PlotTraj}}, \code{\link{PlotTrajFreq}}
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Background map }

