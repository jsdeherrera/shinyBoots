% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/changeToDrilldownSeries.R
\name{changeToDrilldownSeries}
\alias{changeToDrilldownSeries}
\title{Convert a Data Frame to a Drilldown Series for Use in Highcharter}
\usage{
changeToDrilldownSeries(df, idColumnNameAsText)
}
\arguments{
\item{df}{This is the data source to be converted}

\item{idColumnNameAsText}{This is the name of the column that should be the "id" part of the series}
}
\description{
This function converts a data frame to a series for use in highcharter
}
\examples{
df <- data.frame(
name = c("Toyota", "Ford", "Volkswagen", "Cats", "Dogs", "Cows", "Sheep", "Pigs", "Apple", "Oranges"),
value = c(4, 2, 2, 4, 3, 1, 2, 1, 4, 2),
id = c(rep("cars",3), rep("animals",5), rep("fruits",2)),
stringsAsFactors = FALSE
)
ds <- summarizeDrilldownSeries(df,"id")
datSeries <- changeToDrilldownSeries(df,"id")
hc <- createDrilldown(df,"id","Things","Drilldown Test","Some additional text here for subtitle")
}
\keyword{data}
\keyword{manipulation}
