#' Brillouin's index
#' 
#' Calculate Brillouin's diversity index
#' 
#' @param x Community data
#' @param base The logarithm \code{base} used.
#' 
#' @details Brillouin's index is defined as 
#' \eqn{
#' H = \frac{1}{N} Ln (\frac{N!}{\prod_{n=1}^S n_i!})
#' }
#' 
#' where N = Total number of idividuals in the sample and n_i number of species i 
#' in the sample.
#' 
#' @return A vector of brillouins index.
#' 
#' @author Eduard Szoecs \email{szoe8822@@uni-landau.de}
#' @export
#' @examples
#' data(abu)
#' brillouin(abu, 2)
brillouin <- function(x, base = exp(1)) {
  N <- rowSums(x)
  log(factorial(N) / apply(factorial(x), 1, prod), base = base) / N
}