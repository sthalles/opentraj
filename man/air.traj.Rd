\name{air.traj}
\alias{air.traj}
\docType{data}
\title{
  HYSPLIT Forward air trajectories.
}
\description{
This data set contains forward air trajectories calculated by HYSPLIT using the function ProcTraj for the date
of 2010/06/10 (YYYY,MM,DD), from the Natural Resources Canada in Sault Ste Marie, Ontario, Canada. 
This data set was calculated with latitude and longitude equal to 46.503784 and -84.304442 respectively, hour interval of 1 hour from 00:00 am to 23:00 pm of 2010/06/10. Each air trajectory has 12 hours of duration, and starts at a altitude of 100 meters above ground.
}
\usage{data("air.traj")}
\format{
  A data frame with 312 observations on the following 12 variables.
  \describe{
    \item{\code{receptor}}{a numeric vector}
    \item{\code{year}}{a numeric vector; calculating year.}
    \item{\code{month}}{a numeric vector; calculating month.}
    \item{\code{day}}{a numeric vector; calculating day.}
    \item{\code{hour}}{a numeric vector; calculating hour.}
    \item{\code{hour.inc}}{a numeric vector; trajectory's hour increment, i.g. age of the trajectory in hours.}
    \item{\code{lat}}{a numeric vector; trajectory's latitude starting point.}
    \item{\code{lon}}{a numeric vector; trajectory's longitude starting point.}
    \item{\code{height}}{a numeric vector; level above ground (meters)}
    \item{\code{pressure}}{a numeric vector; diagnostic output variables}
    \item{\code{date2}}{a POSIXct; Year month day hour minute of the point}
    \item{\code{date}}{a POSIXct; Starting year, month, day, and hour}
  }
}
\details{
For more information regarding HYSPLIT trajectory's endpoint data, please refer to http://www.arl.noaa.gov/documents/reports/hysplit_user_guide.pdf.
}

\examples{
  data(air.traj)
  str(air.traj) 
}

\keyword{datasets}
