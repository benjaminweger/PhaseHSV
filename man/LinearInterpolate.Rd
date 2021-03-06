% Generated by roxygen2 (4.0.2): do not edit by hand
\name{LinearInterpolate}
\alias{LinearInterpolate}
\title{Linear interpolate}
\usage{
LinearInterpolate(x0, x1, y0, y1, x)
}
\arguments{
\item{x0}{First known point on x scale}

\item{x1}{Second known point on x scale}

\item{y0}{First known point on y scale}

\item{y1}{Second known point on y scale}

\item{x}{Given point(s) to convert to y scale}
}
\value{
y Interpolated between x0, x1 and y0, y1, evaluated at x
}
\description{
Given two scales, convert one number on one scale to another.
}
\note{
Used for \code{PhaseToHsv()} function
}
\examples{
hue.vec <- LinearInterpolate(-pi, pi, 0, 1, seq(from=-pi, to=pi, length.out=50))
}
\author{
Jake Yeung
}

