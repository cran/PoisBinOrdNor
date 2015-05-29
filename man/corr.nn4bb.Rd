\name{corr.nn4bb}
\alias{corr.nn4bb}
\title{Finds the tetrachoric correlation based on user-specified correlation between binary variables. }
\description{This function computes the tetrachoric correlation given the correlation for a pair of binary variables (phi coefficient).}
\usage{corr.nn4bb(p1, p2, BB.cor)
}
\arguments{
  \item{p1}{Probability parameter for the first binary variable.}
  \item{p2}{Probability parameter for the second binary variable.}
  \item{BB.cor}{Pre-specified correlation for a pair of binary variables.}
}
\value{A tetrachoric correlation coefficient.}

\references{
Amatya, A. and Demirtas, H. (2016). Simultaneous generation of multivariate mixed data with Poisson and normal
marginals. Journal of Statistical Computation and Simulation. In press.

}

\examples{
\dontrun{
corr.nn4bb(0.43, 0.7, 0.129)
}
}
