\name{pheno2007}
\alias{pheno2007}
\docType{data}
\title{
  Phenology of eastern spruce budworm adult emergence in Quebec in 2007.
}
\description{
This data set contains estimates of spruce budworm adult phenology in various locations in Quebec (Canada) in 2007. The phenology of adult emergence is represented by a number of adults emerging at particular dates. This number was calculated using the spruce budworm phenology model in BioSIM 10 (https://cfs.nrcan.gc.ca/projects/133) with default parameters.
}
\usage{data(pheno2007)}
\format{
  A data frame with 5555 observations on the following 5 variables.
  \describe{
    \item{\code{ID}}{a numeric vector;  Location Number }
    \item{\code{Latitude}}{a numeric vector; Latitude} 
    \item{\code{Longitude}}{a numeric vector; Longitude} 
    \item{\code{Year.Month.Day}}{a factor; Date of emergence}  
    \item{\code{Adults}}{a numeric vector; Number of adults emerging (based on a starting value of 100 eggs).} 
  }
}
\details{
For more information regarding BioSIM, please refer to: https://cfs.nrcan.gc.ca/projects/133.
}
\source{
Data calculated using BioSIM 10 (https://cfs.nrcan.gc.ca/projects/133). 
}
\references{
BioSIM 10 - User's manual. 2013. Regniere, J.; Saint-Amant, R.; Bechard, A. Nat. Resour. Can., Can. For. Serv., Laurentian For. Cent., Quebec (Quebec). Inf. Rep. LAU-X-137E.
}
\examples{
data(pheno2007)
str(pheno2007)
}
\keyword{datasets}
