\name{opentraj-package}
\alias{opentraj-package}
\alias{opentraj}
\docType{package}
\title{
Functions to create and analyse air trajectory data.
}
\description{
The opentraj project was initially developed at the Natural Resources Canada labs in Sault Ste. Marie, Ontario, with the goal of analyzing the outbreak of the Spruce Budworm insects throughout Canada. The opentraj project aims to provide a collection of functions to create and analyse air trajectory data. These functions join the capabilities offered by the openair project along with the classes and methods for spatial data analysis provided by the R sp package to process air trajectory data.

This package uses the Hybrid Single Particle Lagrangian Integrated Trajectory Model (HYSPLIT) for computing simple air parcel trajectories. The functions offered by this package allow users to run HYSPLIT for trajectory calculations, as well as get its results, directly from R without using any GUI interface.

In addition, because this package bases their data format in the ones used by openair, many of the openair's functions can be used to process these results as well. One of the main advantages of this package, in relation to openair, is the possibility of running either Forward and Backward HYSPLIT trajectories. Also, this package uses methods for spatial data provided by the sp package.
}
\details{
\tabular{ll}{
Package: \tab opentraj\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2014-08-21\cr
License: \tab GPL-2 \cr
}
The most important functions are:

\code{\link{ProcTraj}}, \code{\link{Df2SpLines}}, \code{\link{Df2SpLinesDf}}, \code{\link{PlotTraj}},
\code{\link{PlotTrajFreq}}, \code{\link{RasterizeTraj}}.
}
\author{
OpenTraj is a colaborative effort of Thalles Santos Silva and Jean-Noel Candau.
}

\keyword{ package }
