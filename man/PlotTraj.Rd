\name{PlotTraj}
\alias{PlotTraj}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Plot Trajectory
}
\description{
  The function PlotTraj is designed to plot HySplit trajectories calculated  by
  the function \code{\link{ProcTraj}}.
}
\usage{
  PlotTraj(traj, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{traj}{
    SpatialLines or SpatialLinesDataFrame calculated by the functions \code{\link{Df2SpLines}}
    and \code{\link{Df2SpLinesDf}} respectively. 
  }
  \item{\dots}{
    Further arguments to be passed to the generic function plot.
  }
}
\details{
  This function calls the function \code{\link{PlotBgMap}} to plot the 
  background map behind the trajectories.
}

\author{
  Thalles Santos Silva
}

\seealso{
  \code{\link{Df2SpLines}}, \code{\link{Df2SpLinesDf}}, \code{\link{ProcTraj}}.
}

\examples{
  crs <- "+proj=longlat +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0"
  air.traj.lines <- Df2SpLines(air.traj, crs)
  PlotTraj(air.traj.lines)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
