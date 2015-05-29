\name{corr.nn4pbo}
\alias{corr.nn4pbo}
\title{Finds the underlying bivariate normal correlation given the correlation for a count-binary or count-ordinal pair. }
\description{This function computes the underlying bivariate normal correlation given the correlation for a pair of count and binary variables
or a pair of count and ordinal variables.}
\usage{
corr.nn4pbo(lam, p, PO.cor)
}
\arguments{
  \item{lam}{Rate parameter for the count variable.}
  \item{p}{A vector of probabilities for an ordinal variable. The i-th element of the pvec is the cumulative probability defining 
	   the marginal distribution of the ordinal variable. If the variable has k categories, the i-th element of p will contain k-1 
	   probabilities. The k-th element is implicitly 1.}
  \item{PO.cor}{Pre-specified correlation for a pair of count and binary, or count and ordinal, variables.}
}
\value{ A tetrachoric correlation coefficient.}

\references{
Amatya, A. and Demirtas, H. (2016). Simultaneous generation of multivariate mixed data with Poisson and normal
marginals. Journal of Statistical Computation and Simulation. In press.

Yahav, I. & Shmueli, G. (2012). On generating multivariate Poisson data in management science applications. Applied Stochastic Models in Business and Industry, Volume 28(1), 91-102. 
}

\examples{
\dontrun{
corr.nn4pbo(c(0.05, 0.07), c(0.2, 0.5), 0.235)
}
}

