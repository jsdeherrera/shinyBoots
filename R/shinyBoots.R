#' shinyBoots Package Documentation
#'
#' This package contains functions to make it easier to create a reactive website
#' using Twitter Bootstrap and Shiny.  It also contains some functions to make it
#' easier to connect to local database servers.
#'
#' The package contains functions that fall into the following general categories:
#' functions to create boostrap elements, functions to create a reactive app with CRUD
#' functions (create, retrieve, update, and delete), functions to create charts and
#' visualizations, functions to handle CSV files in a Shiny app, and functions to manipulate
#' data.
#'
#' \subsection{Bootstrap}{
#'
#' \code{\link{actionLink}} - creates an action link that can be used to trigger
#' server-side functions
#'
#' \code{\link{box}} and \code{\link{boxUI}} - creates box containers in the UI
#'
#' \code{\link{buttonModal}} - creates a button that opens a modal
#'
#' \code{\link{buttonRow}} - creates a row of buttons
#'
#' \code{\link{createLaunchModal}} - creates a modal that launches on web site load
#'
#' \code{\link{createLoadModalScript}} - creates a modal script to launch a modal on web site load
#'
#' \code{\link{createPrezModalScript}} - creates a modal that can contain a Google Slides presentation
#'
#' \code{\link{createUIModal}} - creates a modal that can contain a Shiny UI
#'
#' \code{\link{trackingScriptOut}} - creates a tracking script for Google Analytics
#'
#' \code{\link{valueBoxGroup}} - creates a group of value boxes
#' }
#'
#' \subsection{CRUD}{
#'
#' \code{\link{CastData}} - casts data as part of a CRUD series of functions
#'
#' \code{\link{CreateData}} - appends or creates data
#'
#' \code{\link{DeleteData}} - deletes the selected record
#'
#' \code{\link{GetNextId}} - gets the next ID in a list of records
#'
#' \code{\link{GetTableMetadata}} - gets table metadata (often useful in creating forms for the UI, etc.)
#'
#' \code{\link{ReadData}} - reads data from a saved source
#'
#' \code{\link{UpdateData}} - updates the selected record
#'
#' \code{\link{UpdateInputs}} - updates inputs in UI as part of a CRUD series of functions
#' }
#'
#' \subsection{CSV}{
#'
#' \code{\link{csvFile}} - handles the input of the CSV file input (server-side function)
#'
#' \code{\link{csvFileInput}} - creates csv file input (UI-side function)
#' }
#'
#' \subsection{Data Manipulation}{
#'
#' \code{\link{changeToDrilldownSeries}} - change a dataset to a drilldown series for use with Highcharter
#'
#' \code{\link{changeToSeries}} - change any dataset into a series for use with Highcharter
#'
#' \code{\link{colToDate}} - convert a character time column into a date and strip out hour and day
#'
#' \code{\link{filterData}} - dynamically filter through data with lazy evaluation
#'
#' \code{\link{filterNotData}} - dynamically filter through data with lazy evaluation (opposite of above - filters for NOT cases)
#'
#' \code{\link{prepSeries}} - prepare a data set to be converted into a series for use in Highcharter (uses mean)
#'
#' \code{\link{prepSeriesSum}} - prepare a data set to be converted into a series for use in Highcharter (uses sum)
#'
#' \code{\link{summarizeDrilldownSeries}} - create a summary series for a drilldown chart with Highcharter
#'
#' \code{\link{wideToLong}} - change the shape of data from wide to long (columns converted to different factors in a single column)
#' }
#'
#' \subsection{Initialization}{
#'
#' \code{\link{loadPkgs}} - loads a list of packages from a specified location
#'
#' \code{\link{problemPackages}} - removes and then loads problematic packages
#' }
#'
#' \subsection{SQL}{
#'
#' \code{\link{createQuery}} - query a variety of different databases
#'
#' \code{\link{loadData}} - returns a data frame that is the output of a SQL query
#'
#' \code{\link{saveData}} - saves the data frame to a specific SQL table
#'
#' \code{\link{setSQLOptions}} - sets SQL default options for making database connections
#' }
#'
#' \subsection{Visualization}{
#'
#' \code{\link{createAreaChart}} - creates an area chart with Highcharter
#'
#' \code{\link{createColumn}} - creates a column chart with Highcharter
#'
#' \code{\link{createDrilldown}} - create a drilldown chart with Highcharter
#'
#' \code{\link{createHeatmap}} - creates a heatmap with Highcharter
#'
#' \code{\link{createWaterfall}} - creates a waterfall chart with Highcharter
#'
#' \code{\link{highcharterOptions}} - sets highcharter options
#'
#' \code{\link{second_el_to_numeric}} - converts a list to numeric for use with highcharter drilldown charts
#' }
"_PACKAGE"
#> [1] "_PACKAGE"
