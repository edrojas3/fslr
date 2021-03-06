% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fslsum.R
\name{fslsum}
\alias{fslsum}
\title{FSL Sum}
\usage{
fslsum(file, opts = "", ts = FALSE, ...)
}
\arguments{
\item{file}{(character) filename of image to be checked}

\item{opts}{Additional options to pass to \code{\link{fslstats}}}

\item{ts}{(logical) is the series a timeseries (4D), invoking \code{-t} 
option}

\item{...}{options passed to \code{\link{fslstats}}}
}
\value{
Numeric value
}
\description{
This function calls \code{fslstats -M -V} to get product, 
aka the approximate sum.
}
\note{
This may be approximate due to rounding
}
