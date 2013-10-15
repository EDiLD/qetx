#' Winsorization
#' 
#' Values below a detection limit are replaced by the smallest observation above
#' the LOD; however also the same number of largest values are replaced by the 
#' next smallest observation.
#' 
#' @param x numeric; a vector of values.
#' @param lod numeric; limit of detection.
#' @param width integer; width (=number of observations on each tail) of winsorization.
#' 
#' @return A vector of winsorized values.
#' 
#' @author Eduard Szoecs \email{szoe8822@@uni-landau.de}
#' 
#' @seealso \code{\link{sd_winsor}}
#' @export
#' @examples
#' x <- c(7.7, 7.7, 7.7, 7.1, 6.9, 6.5, 6.2, 6.1, 5.7, 5.6, 5.2, 4.5, 
#' 4.1, 4, 3.6, 3.5, 3.5, 3.3, 2.6, 2.6, 2.6)
#' winsor(x, lod = 2.5)

winsor <- function (x, lod = NULL, width = NULL)
{
  if(is.null(width) & is.null(lod))
    stop('Must specify lod or width!')
  if(!is.null(width) & !is.null(lod))
    stop('Specify either width or lod!')
  # find width
  if(!is.null(lod))
    width <- sum(x < lod)
  # save order
  o_ord <- order(x, decreasing=TRUE)
  x <- sort(x, decreasing=TRUE)
  # get number of observations
  n <- length(x)
  # Replace lowest
  x[1:width] <- x[width + 1]
  # replace highest
  x[(n - width + 1):n] <- x[(n-width)]
  # return in original order
  out <- x[o_ord]
  attr(out, 'width') = width
  return(out)
}

#' Winsorized Standard Deviation
#' 
#' 
#' @param x numeric; A vector as returned by \code{\link{winsor}}.
#' @return Winsorized Standard Deviation.
#' @author Eduard Szoecs \email{szoe8822@@uni-landau.de}
#' @seealso \code{\link{winsor}}
#' @export
#' @examples
#' x <- c(7.7, 7.7, 7.7, 7.1, 6.9, 6.5, 6.2, 6.1, 5.7, 5.6, 5.2, 4.5, 
#' 4.1, 4, 3.6, 3.5, 3.5, 3.3, 2.6, 2.6, 2.6)
#' xw <- winsor(x, lod = 2.5)
#' sd_winsor(xw)
sd_winsor <- function(x){
  n <- length(x)
  width <- attr(x, 'width')
  out <- sd(x) * (n - 1) / (n - 1 - 2*width)
  return(out)
}

