% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colToDate.R
\name{colToDate}
\alias{colToDate}
\title{Convert a Character Time Column into a Date and Strip Out Hour and Day}
\usage{
colToDate(dat, dateColName, dateFormat)
}
\arguments{
\item{dat}{This is the data source to be converted}

\item{dateColName}{This is the name of the date column to be converted}

\item{dateFormat}{This is the format of the date column}
}
\description{
This function converts a character column in a data frame to time and then strips out day and hour of the time as new columns.  The output is a new data frame with one modified column (character converted to date) and two new columns (day of week and hour of day).
}
\examples{
testDat <- data.frame(stringsAsFactors = FALSE, time = c("2016-10-31","2016-12-25","2016-07-04"),event = c("Halloween","Christmas","US Independence Day"))
testDat <- colToDate(testDat,"time","\%Y-\%m-\%d")
}
\keyword{conversion}
\keyword{data}
\keyword{datetime}
\keyword{manipulation,}
