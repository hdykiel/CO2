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

# set user agent
ua <- httr::user_agent("https://github.com/hdykiel/CO2")

ppm <- function() {

  # send GET request
  resp <- httr::GET("http://hqcasanova.com/co2/", ua)

  # parse response
  content <- httr::content(resp)
  as.numeric(sub(" ppm", "", content))
}


