\name{corr.nn4pp}
\alias{corr.nn4pp}
\title{Finds the underlying bivariate normal correlation given the correlation for a pair of count variables.}
\description{This function computes the underlying bivariate normal correlation given the specified correlation for a pair of count variables.}
\usage{
corr.nn4pp(lambda1, lambda2, PP.cor)
}
\arguments{
  \item{lambda1}{Rate parameter for the first count variable.}
  \item{lambda2}{Rate parameter for the second count variable.}
  \item{PP.cor}{Pre-specified correlation for a pair of count variables.}}
\value{Correlation of underlying bivariate normal data.}

\references{
Amatya, A. & Demirtas, H. (2015). Simultaneous generation of multivariate mixed data with Poisson and normal marginals. Journal of Statistical Computation and Simulation, Volume 85, Issue 15, 3129-3139.
}

\examples{
\dontrun{
corr.nn4pp(0.05, 0.02, 0.34)
}
}

