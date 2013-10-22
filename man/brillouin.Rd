\name{brillouin}
\alias{brillouin}
\title{Brillouin's index}
\usage{
  brillouin(x, base = exp(1))
}
\arguments{
  \item{x}{Community data}

  \item{base}{The logarithm \code{base} used.}
}
\value{
  A vector of brillouins index.
}
\description{
  Calculate Brillouin's diversity index
}
\details{
  Brillouin's index is defined as \eqn{ H = \frac{1}{N} Ln
  (\frac{N!}{\prod_{n=1}^S n_i!}) }
}
\examples{
data(abu)
brillouin(abu, 2)
}
\author{
  Eduard Szoecs \email{szoe8822@uni-landau.de}
}

