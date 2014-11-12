#' Linear interpolate
#'
#' Given two scales, convert one number on one scale to another.
#'
#' @param x0 First known point on x scale
#' @param x1 Second known point on x scale
#' @param y0 First known point on y scale
#' @param y1 Second known point on y scale
#' @param x Given point(s) to convert to y scale
#'
#' @return y Interpolated between x0, x1 and y0, y1, evaluated at x
#' @author Jake Yeung
#' @note Used for \code{PhaseToHsv()} function
#' @examples
#' 
#' hue.vec <- LinearInterpolate(-pi, pi, 0, 1, seq(from=-pi, to=pi, length.out=50))
#' 
#' @export

LinearInterpolate <- function(x0, x1, y0, y1, x){
  # Convert scale x0 to x1 to y0 and y1, given x (can be vector)
  # http://en.wikipedia.org/wiki/Linear_interpolation#Linear_interpolation_between_two_known_points
  # 
  # ARGS
  # x0: first known point on x scale
  # x1 second known point on x scale
  # y0: first known point on y scale
  # y1: second known point on y scale
  # x: given point(s) to convert to y scale
  # 
  # RETURNS
  # y: interpolated between x0, x1 and y0, y1, evaluated at x
  y <- y0 + (y1 - y0) * (x - x0) / (x1 - x0)
  return(y)
}