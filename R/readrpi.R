#' @title Read NIfTI file reoriented to RPI
#' 
#' @description  This function calls the \code{\link{readnii}} function after
#' calling \code{\link{rpi_orient_file}} to force RPI orientation.
#' @param file file name of the NIfTI file. 
#' @param ... Arguments to pass to \code{\link{readnii}}
#' @param verbose print diagnostics, passed to \code{\link{rpi_orient_file}}
#' @export
readrpi <- function(file, ..., verbose = TRUE) {
  args = list(...)
  n_args = names(args)
  if ("fname" %in% n_args) {
    stop("fname cannot be specified in readrpi!")
  }
  
  L = rpi_orient_file(file = file, verbose = verbose)
  file = L$img
  nim = readnii(fname = file, ...)
  return(nim)
}