\name{hy.traj2007}
\alias{hy.traj2007}
\docType{data}
\title{
	HySplit trajectory's calculations
}
\description{
  This data set gives HYSPLIT forward air trajectories calculations computed by the function
  ProcTraj for the year of 2007 with 3 hours of duration.
}
\usage{data(hy.traj2007)}
\format{
  A data frame with 111100 observations on the following 12 variables.
  \describe{
    \item{\code{receptor}}{a numeric vector; }
    \item{\code{year}}{a numeric vector; calculating year. }
    \item{\code{month}}{a numeric vector; calculating month. }
    \item{\code{day}}{a numeric vector; calculating day. }
    \item{\code{hour}}{a numeric vector; calculating hour. }
    \item{\code{hour.inc}}{a numeric vector; trajectory's hour increment, i.g. age of the trajectory in hours.}
    \item{\code{lat}}{a numeric vector; trajectory's latitude starting point.}
    \item{\code{lon}}{a numeric vector; trajectory's longitude starting point.}
    \item{\code{height}}{a numeric vector; level above ground (meters)}
    \item{\code{pressure}}{a numeric vector; diagnostic output variables }
    \item{\code{date2}}{a POSIXct; Year month day hour minute of the point}
    \item{\code{date}}{a POSIXct; Starting year, month, day, and hour}
  }
}
\details{
  For more information regarding HYSPLIT trajectory's endpoint data, please refer
  to http://www.arl.noaa.gov/documents/reports/hysplit_user_guide.pdf.
}

\examples{
data(hy.traj2007)
str(hy.traj2007) 
}
\keyword{datasets}
