\name{winsor}
\alias{winsor}
\title{Winsorization}
\usage{
  winsor(x, width = 2)
}
\arguments{
  \item{x}{numeric; a vector of values}

  \item{width}{integer; width of winsorization}
}
\value{
  a vector with winsorized values
}
\description{
  Winsorization
}
\examples{
x <- c(7.7, 7.7, 7.7, 7.1, 6.9, 6.5, 6.2, 6.1, 5.7, 5.6, 5.2, 4.5,
4.1, 4, 3.6, 3.5, 3.5, 3.3, 2.6, 2.6, 2.6)
winsor(x)
}
\author{
  Eduard Szoecs \email{szoe8822@uni-landau.de}
}
\seealso{
  \code{\link{sd_winsor}}
}

