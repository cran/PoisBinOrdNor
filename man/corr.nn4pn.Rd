\name{corr.nn4pn}
\alias{corr.nn4pn}
\title{Finds the underlying bivariate normal correlation given the correlation for a count-normal pair.}
\description{This function computes the underlying bivariate normal correlation given the specified correlation for a pair of count and normal variables.}
\usage{
corr.nn4pn(lam, PN.cor)
}
\arguments{
  \item{lam}{Rate parameter for the count variable.}
  \item{PN.cor}{Pre-specified correlation for a pair of count and normal variables.}
}
\value{Correlation of underlying bivariate normal data.}
\examples{
\dontrun{
corr.nn4pn(0.05, 0.32)
}
}

