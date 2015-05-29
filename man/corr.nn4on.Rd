\name{corr.nn4on}
\alias{corr.nn4on}
\title{Finds polyserial correlation for given the correlation for an ordinal-normal pair.}
\description{This function computes the polyserial correlation given the specified correlation for a pair of ordinal and normal variables (point-polyserial correlation).}
\usage{
corr.nn4on(p, ON.cor)
}
\arguments{
  \item{p}{A vector of probabilities for an ordinal variable. The i-th element of the pvec is the cumulative probability defining 
	   the marginal distribution of the ordinal variable. If the variable has k categories, the i-th element of p will contain k-1 
	   probabilities. The k-th element is implicitly 1.}
  \item{ON.cor}{Pre-specified correlation for a pair of ordinal-normal variables.}
}
\value{A tetrachoric correlation coefficient.}

\examples{
\dontrun{
corr.nn4on(c(0.33, 0.66), 0.22)
}
}


