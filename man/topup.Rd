% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/topup.R
\name{topup}
\alias{topup}
\alias{fsl_topup}
\title{topup - calling FSL topup}
\usage{
topup(imain, datain, out = NULL, fout = NULL, iout = NULL,
  logout = NULL, warpres = 10, subsamp = 1, fwhm = 8, config = NULL,
  miter = 5, lambda = NULL, ssqlambda = 1, regmod = c("bending_energy",
  "membrane_energy"), estmov = 1, minmet = c(0, 1), splineorder = c(3, 2),
  numprec = c("double", "float"), interp = c("spline", "linear"),
  scale = c(0, 1), regrid = c(0, 1), verbose = TRUE)

fsl_topup(...)
}
\arguments{
\item{imain}{name of 4D file with images}

\item{datain}{name of text file with PE directions/times}

\item{out}{base-name of output files (spline coefficients (Hz) and 
movement parameters)}

\item{fout}{name of image file with field (Hz)}

\item{iout}{name of 4D image file with unwarped images}

\item{logout}{Name of log-file}

\item{warpres}{(approximate) resolution (in mm) of warp basis for 
the different sub-sampling levels, default 10}

\item{subsamp}{sub-sampling scheme, default 1}

\item{fwhm}{FWHM (in mm) of gaussian smoothing kernel, default 8}

\item{config}{Name of config file specifying command line arguments}

\item{miter}{Max # of non-linear iterations, default 5}

\item{lambda}{Weight of regularisation, default depending on 
\code{ssqlambda} and \code{regmod} switches. See user documetation.}

\item{ssqlambda}{If set (=1), lambda is weighted by current ssq, default 1}

\item{regmod}{Model for regularisation of warp-field 
[membrane_energy bending_energy], default bending_energy}

\item{estmov}{Estimate movements if set, default 1 (true)}

\item{minmet}{Minimisation method 0=Levenberg-Marquardt, 1=Scaled 
Conjugate Gradient, default 0 (LM)}

\item{splineorder}{Order of spline, 2->Qadratic spline, 3->Cubic 
spline. Default=3}

\item{numprec}{Precision for representing Hessian, double or float. 
Default double}

\item{interp}{Image interpolation model, linear or spline. Default spline}

\item{scale}{If set (=1), the images are individually scaled to a 
common mean, default 0 (false)}

\item{regrid}{If set (=1), the calculations are done in a different 
grid, default 1 (true)}

\item{verbose}{Print diagonostic information while running}

\item{...}{arguments passed to \code{topup} if using \code{fsl_topup}}
}
\description{
A tool for estimating and correcting susceptibility induced distortions
}
