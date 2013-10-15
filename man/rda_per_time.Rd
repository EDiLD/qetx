\name{rda_per_time}
\alias{rda_per_time}
\title{Redundancy Analysis (RDA) per factor level}
\usage{
  rda_per_time(response, treatment, time)
}
\arguments{
  \item{response}{Multivariate response data.}

  \item{treatment}{A variable for treatments.}

  \item{time}{A factor defining the observation times}
}
\value{
  A list of lenght of time-points. Each list entry holds
  the resulting rda-model ($rda) or the result of a
  permutation test ($anova).
}
\description{
  This function runs a RDA on each timepoint. Signuificance
  of contraining terms is assessed via permutaions. This is
  mainly a wrapper around \code{\link{rda}} and
  \code{\link{anova.cca}}.
}
\examples{
# Chlorpyrifos experiment and experimental design
data(pyrifos)
week <- gl(11, 12, labels=c(-4, -1, 0.1, 1, 2, 4, 8, 12, 15, 19, 24))
dose <- factor(rep(c(0.1, 0, 0, 0.9, 0, 44, 6, 0.1, 44, 0.9, 0, 6), 11))
# PRC
mod <- prc(pyrifos, dose, week)
# RDA per week, using ln-transformed dose as continuous explaing variable
mod_pw <- rda_per_time(pyrifos, log(10*as.numeric(as.character(dose)) + 1), week)
# extract p-values for each week
sapply(mod_pw, function(x) x$anova[1, 5])
}
\author{
  Eduard Szoecs \email{szoe8822@uni-landau.de}
}
\seealso{
  \code{\link{prc}} \code{\link{anova.cca}}
  \code{\link{rda}}
}

