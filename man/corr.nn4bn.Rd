\name{corr.nn4bn}
\alias{corr.nn4bn}
\title{Finds the biserial correlation given the correlation for a binary-normal pair.}
\description{This function computes the biserial correlation given the specified correlation for a pair of binary and normal variables (point-biserial correlation).}
\usage{
corr.nn4bn(p, BN.cor)
}
\arguments{
  \item{p}{Probability parameter for the binary variable.}
  \item{BN.cor}{Pre-specified correlation for a pair of binary and normal variables.}
}
\value{A biserial correlation coefficient.}
\examples{
\dontrun{
corr.nn4bn(0.43, 0.12)
}
}


