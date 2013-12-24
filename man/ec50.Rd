\docType{data}
\name{ec50}
\alias{ec50}
\title{Acute toxicity values (LC50 and EC50) for taxa exposed to chlorpyrifos.}
\format{A data.frame with 4 columns:
\describe{
\item{"species"}{species names.}
\item{"duration"}{duration of experiment in days.}
\item{"endpoint"}{toxicity value.}
\item{"conc"}{value of EC50/LC50 in ug/L.}
}}
\source{
Data was retrieved from ECOTOX database, U.S.Environmental
Protection Agency
\url{http://cfpub.epa.gov/ecotox/advanced_query.htm}
}
\usage{
data(ec50)
}
\description{
48- to 96-hour laboratory EC50/LC50 values for Chlorpyrifos
(CAS 2921882) of freshwater insects/spiders. The dataset
covers 35 taxa with 138 EC50 values.
}
\note{
This dataset has been preprocessed - some observations have
been removed.
}
\keyword{data}

