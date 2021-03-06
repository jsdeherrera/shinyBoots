#' Create a Heatmap Using Highcharter
#'
#' This function creates a heatmap using highcharter.
#' @param data This is the data source for the heatmap.
#' @param xText This is the column name in the data of the x values in the heatmap.
#' @param yText This is the column name in the data of the y values in the heatmap.
#' @param valueText This is the column name in the data of the data values in the heatmap.
#' @param title This is the title of the heatmap.
#' @param subTitle This is the subtitle of the heatmap.
#' @param xTitle This is the title of the x axis.
#' @param yTitle This is the title of the y axis.
#' @keywords highcharter, heatmap
#' @export
#' @examples
#' output$heatmap <- highcharter::renderHighchart({
#' hc <- createHeatmap(dat,"dayOfWeek","hourOfDay","Value",
#'   "Heatmap of Marginal Trips by Hour and Day",
#'   "Heatmap values represent the marginal trips from one additional driver hour or rider session","Day of Week","Hour of the Day")
#' })

createHeatmap <- function(data,xText,yText,valueText,title,subTitle,xTitle,yTitle){
  # Load required libraries
  require(highcharter)
  require(viridis)
  require(lazyeval)

  # Create tooltip function
  fntltp <- JS("function(){
               return this.series.xAxis.categories[this.point.x] + ' ' +  this.point.y + ':00' + ':<br>' +
               Highcharts.numberFormat(this.point.value, 2);
}")

  hcaes_string <- function (x, y, ...){

    mapping <- list(...)

    if (!missing(x))
      mapping["x"] <- list(x)

    if (!missing(y))
      mapping["y"] <- list(y)

    mapping <- lapply(mapping, function(x) {
      if (is.character(x)) {
        parse(text = x)[[1]]
      }
      else {
        x
      }
    })

    mapping <- structure(mapping, class = "uneval")

    mapping <- mapping[names(mapping) != ""]

    class(mapping) <- c("hcaes", class(mapping))

    mapping
  }

  hcaes_ <- hcaes_string

  # Create highchart heatmap
  hc <- hchart(data, "heatmap", hcaes_(x = xText,
                                       y = yText,
                                       value = valueText)) %>%
    hc_xAxis(title = list(text = xTitle)) %>%
    hc_yAxis(title = list(text = yTitle),
             reversed = TRUE, offset = -20, tickLength = 0,
             gridLineWidth = 0, minorGridLineWidth = 0,
             labels = list(style = list(fontSize = "8px"))) %>%
    hc_plotOptions(
      series = list(
        boderWidth = 0,
        dataLabels = list(enabled = TRUE,
                          format = '{point.value:,.2f}')
      ),
      stacking = "normal"
    ) %>%
    hc_colorAxis(stops = color_stops(10, rev(inferno(10))),
                 type = "logarithmic") %>%
    hc_tooltip(formatter = fntltp) %>%
    hc_title(text = title) %>%
    hc_subtitle(text = subTitle) %>%
    hc_legend(layout = "vertical", verticalAlign = "top",
              align = "right", valueDecimals = 0) %>%
    hc_size(height = 800)
  return(hc)
  }
