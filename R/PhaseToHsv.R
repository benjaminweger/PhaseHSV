#' Convert phase vector to "hue" values.
#'
#' Finds the sum of squared numbers.
#'
#' @param phase.vec Input vector of phase angles.
#' @param min.phase Minimum possible phase in phase.vec (e.g. -pi).
#' @param max.phase Max.phase: max possible phase in phase.vec (e.g. +pi)
#'
#' @return hue.vec Hue values between 0 and 1.
#' @author Jake Yeung
#' @note Can expand to handle phases that span more than 2pi
#' @examples
#' phase.vec <- seq(from=-pi, to=pi, length.out=360)
#' hue.vec <- PhaseToHsv(phase.vec, -pi, pi)
#'
#' @export

# Define my functions -----------------------------------------------------

PhaseToHsv <- function(phase.vec, min.phase, max.phase){
  # Convert phase vector to "hue" values.
  # http://research.stowers-institute.org/efg/Report/UsingColorInR.pdf
  #
  # ARGS
  #   phase.vec: input vector of phase angles.
  #     Should have range of 2pi, starting at min.phase to max.phase
  #     TODO: auto convert multiples of 2pi to within proper range.
  #   min.phase: minimum possible phase in phase.vec (e.g. -pi)
  #   max.phase: max possible phase in phase.vec (e.g. +pi)
  #
  # RETURNS
  #   hue.vec: 'hue' values between 0 and 1.
  #     TODO: specify "saturation" and "value" as well.

  # Convert phase scale to 0 to 1.
  MIN.HUE <- 0
  MAX.HUE <- 1
  hue.vec <- LinearInterpolate(min.phase, max.phase, MIN.HUE, MAX.HUE, phase.vec)
  return(hue.vec)
}
