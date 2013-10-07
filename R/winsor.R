#' Winsorization
#' 
#' @param x numeric; a vector of values
#' @param width integer; width of winsorization
#' 
#' @return a vector with winsorized values
#' 
#' @author Eduard Szoecs \email{szoe8822@@uni-landau.de}
#' 
#' @seealso \code{\link{sd_winsor}}
#' @export
#' @examples
#' x <- c(7.7, 7.7, 7.7, 7.1, 6.9, 6.5, 6.2, 6.1, 5.7, 5.6, 5.2, 4.5, 
#' 4.1, 4, 3.6, 3.5, 3.5, 3.3, 2.6, 2.6, 2.6)
#' winsor(x)

winsor <- function (x, width = 2)
{
  # save order
  o_ord <- order(x)
  x <- sort(x, decreasing=TRUE)
  # get number of observations
  n <- length(x)
  # Replace lowest
  x[1:width] <- x[width + 1]
  # replace highest
  x[(n - width + 1):n] <- x[(n-width)]
  # return in original order
  out <- x[o_ord]
  attr(out, 'width') <- width
  return(out)
}

#' Winsorized Standard Deviation
#' 
#' @param x a vector as returned by \code{\link{winsor()}}
#' @return Winsorized Standard Deviation
#' @author Eduard Szoecs \email{szoe8822@@uni-landau.de}
#' @seealso \code{\link{winsor}}
#' @export
#' @examples
#' x <- c(7.7, 7.7, 7.7, 7.1, 6.9, 6.5, 6.2, 6.1, 5.7, 5.6, 5.2, 4.5, 
#' 4.1, 4, 3.6, 3.5, 3.5, 3.3, 2.6, 2.6, 2.6)
#' xw <- winsor(x)
#' sd_winsor(xw)
sd_winsor <- function(x){
  n <- length(x)
  width <- attr(x, 'width')
  out <- sd(x) * (n - 1) / (n - 1 - 2*width)
  return(out)
}

