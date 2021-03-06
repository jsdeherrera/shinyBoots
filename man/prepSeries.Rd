% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prepSeries.R
\name{prepSeries}
\alias{prepSeries}
\title{Prepare a Data Frame to Be Converted to a Series for Use in Highcharter}
\usage{
prepSeries(df, x1, x2, y)
}
\arguments{
\item{df}{This is the data source to be converted}

\item{x1}{This is the first column to be grouped by}

\item{x2}{This is the second column to be grouped by}

\item{y}{This is the column to summarise by taking the mean}
}
\description{
This function converts a data frame to a summary data frame that can be converted to a series for use in highcharter
}
\examples{
library(dplyr)
dat2 <- prepSeries(mtcars,"cyl","am","mpg") \%>\% mutate(am = ifelse(am == 1,"Automatic","Manual"))
datSeries <- changeToSeries(dat2,"am")
createColumn(datSeries,unique(dat2$cyl),"Fuel Efficiency","Miles per Gallon by Transmission and Cylinders")
}
\keyword{data}
\keyword{manipulation}
