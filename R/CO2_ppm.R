#' Get CO2 Parts Per Million
#'
#' Retrieves CO2 ppm from http://hqcasanova.com/co2/
#'
#' @return
#' @export
#'
#' @examples
#' ppm()
#' > [1] 414.01


ppm <- function() {
  resp <- httr::GET("http://hqcasanova.com/co2/")
  content <- httr::content(resp)
  as.numeric(sub(" ppm", "", content))
}


