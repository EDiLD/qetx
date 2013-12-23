\name{winsor}
\alias{winsor}
\title{Winsorization}
\usage{
winsor(x, lod = NULL, width = NULL)
}
\arguments{
  \item{x}{numeric; a vector of values.}

  \item{lod}{numeric; limit of detection.}

  \item{width}{integer; width (=number of observations on
  each tail) of winsorization.}
}
\value{
A vector of winsorized values.
}
\description{
Values below a detection limit are replaced by the smallest
observation above the LOD; however also the same number of
largest values are replaced by the next smallest
observation.
}
\examples{
x <- c(7.7, 7.7, 7.7, 7.1, 6.9, 6.5, 6.2, 6.1, 5.7, 5.6, 5.2, 4.5,
4.1, 4, 3.6, 3.5, 3.5, 3.3, 2.6, 2.6, 2.6)
winsor(x, lod = 2.5)
}
\author{
Eduard Szoecs \email{szoe8822@uni-landau.de}
}
\seealso{
\code{\link{sd_winsor}}
}

