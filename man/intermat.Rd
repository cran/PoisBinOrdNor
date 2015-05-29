\name{intermat}
\alias{intermat}
\title{Calculates and assembles the intermediate correlation matrix entries for the multivariate normal data.}
\description{This function computes and assembles the correlation entries for the intermediate multivariate normal data.}
\usage{intermat(no_pois, no_bin, no_ord, no_norm, corr_mat, prop_vec_bin, prop_vec_ord,
 lam_vec, nor_mean, nor_var)
}
\arguments{
  \item{no_pois}{Number of the count variables.}
  \item{no_bin}{Number of the binary variables.}
  \item{no_ord}{Number of the ordinal variables.}
  \item{no_norm}{Number of the normal variables.}
  \item{corr_mat}{Pre-specified correlation matrix for the multivariate data.}
  \item{prop_vec_bin}{Vector of probabilities for the binary variables.}
  \item{prop_vec_ord}{Vector of probabilities for the ordinal variables.}
  \item{lam_vec}{Vector of rate parameters for the count variables.}
  \item{nor_mean}{Vector of means for the normal variables.}
  \item{nor_var}{Vector of variances for the normal variables.}
}

\value{The intermediate correlation matrix that will be used later for multivariate normal data simulation. }

\seealso{\code{\link{corr.nn4bb}}, \code{\link{corr.nn4bn}}, \code{\link{corr.nn4on}}, \code{\link{corr.nn4pbo}}, 
\code{\link{corr.nn4pn}}, \code{\link{corr.nn4pp}}, and \code{\link{validation_specs}}.}


\references{
Ferrari, P.A. and Barberio, A. (2012). Simulating ordinal data. Multivariate Behavioral Research, 47(4), 566-589.

Barberio, A. and Ferrari, P.A. (2014). GenOrd: Simulation of ordinal and discrete variables with given correlation matrix and marginal distributions.
http://www.cran.r-project.org/web/packages/GenOrd.
}


\examples{
\dontrun{
num_pois<-2
num_bin<-1
num_ord<-2
num_norm<-1
lamvec=sample(10,2)
pbin=runif(1)
pord=list(c(0.3, 0.7), c(0.2, 0.3, 0.5))
nor.mean=3.1
nor.var=0.85
M=
c(-0.05, 0.26, 0.14, 0.09, 0.14, 0.12, 0.13, -0.02, 0.17, 0.29, -0.04, 0.19, 0.10, 0.35, 0.39)
N=diag(6)
N[lower.tri(N)]=M
TV=N+t(N)
diag(TV)<-1
intmat<-
intermat(num_pois,num_bin,num_ord,num_norm,corr_mat=TV,pbin,pord,lamvec,nor.mean,nor.var)

}
}

