\name{sd_winsor}
\alias{sd_winsor}
\title{Winsorized Standard Deviation}
\usage{
  sd_winsor(x)
}
\arguments{
  \item{x}{a vector as returned by \code{\link{winsor()}}}
}
\value{
  Winsorized Standard Deviation
}
\description{
  Winsorized Standard Deviation
}
\examples{
x <- c(7.7, 7.7, 7.7, 7.1, 6.9, 6.5, 6.2, 6.1, 5.7, 5.6, 5.2, 4.5,
4.1, 4, 3.6, 3.5, 3.5, 3.3, 2.6, 2.6, 2.6)
xw <- winsor(x)
sd_winsor(xw)
}
\author{
  Eduard Szoecs \email{szoe8822@uni-landau.de}
}
\seealso{
  \code{\link{winsor}}
}

