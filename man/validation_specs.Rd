\name{validation_specs}
\alias{validation_specs}
\title{Validates user-specified parameters}
\description{This function checks the validity of user specified parameters including rate parameters for count variables, 
proportion parameters for binary and ordinary variables, mean and variance parameters for normal data, as well as the 
validity of entries in the correlation matrix. This function also computes the lower and upper limits for each pairwise 
correlation based on the marginal probabilities for range violation checks.
}
\usage{
validation_specs(no.pois, no.bin, no.ord, no.norm, corr.mat, prop.vec.bin, 
prop.vec.ord, lamvec, nor.mean, nor.var)
}
\arguments{
  \item{no.pois}{Number of count variables.}
  \item{no.bin}{Number of binary variables.}
  \item{no.ord}{Number of ordinal variables.}
  \item{no.norm}{Number of normal variables.}
  \item{corr.mat}{User specified correlation matrix for the multivariate data.}
  \item{prop.vec.bin}{Vector of probabilities corresponding to each of the binary variables.}
  \item{prop.vec.ord}{Vector of probabilities corresponding to each of the ordinal variables. For each of the ordinal variable, 
                      the i-th element of the probability vector is the cumulative probability defining the marginal distribution
		      of the ordinal variable. If the variable has k categories, the i-th element of p will contain k-1 probabilities.
		      The k-th element is implicitly 1.}
  \item{lamvec}{Vector of rate parameters for the count variables.}
  \item{nor.mean}{Vector of means for the normal variables.}
  \item{nor.var}{Vector of variances for the normal variables.}
}
\details{This function computes the lower and upper bounds for all possible pairs that involve count, binary, ordinal and normal variables.}
\value{The function returns TRUE if no specification problem is encountered. Otherwise, it returns an error message.}

\references{
Demirtas, H. and Hedeker, D. (2011). A practical way for computing approximate lower and upper
correlation bounds. The American Statistician, 65(2), 104-109.

Demirtas, H., Hedeker, D., and Mermelstein, R.J. (2012). Simulation of massive public health data
by power polynomials. Statistics in Medicine, 31(27), 3337-3346.
}


\examples{
\dontrun{

num_pois<-1
num_bin<-1
num_ord<-1
num_norm<-1
lambda<-c(1)
pbin<-c(0.3)
pord<-list(c(0.3,0.6))
normean<-15
norvar<-7
corr.mat=matrix(c(1,0.2,0.1,0.3, 0.2,1,0.5,0.4, 0.1,0.5,1, 0.7, 0.3, 0.4, 0.7, 1),4,4)
validation_specs(num_pois, num_bin, num_ord, num_norm, corr.mat, pbin, pord, lambda,
normean,norvar)

num_pois<-2
num_bin<-2
num_ord<-2
num_norm<-0
lambda<-c(1,2)
pbin<-c(0.3,0.5)
pord<-list(c(0.3,0.6),c(0.5,0.6))
corr.mat=matrix(0.64,6,6)
diag(corr.mat)=1
validation_specs(num_pois, num_bin, num_ord, num_norm, corr.mat, pbin, pord, lambda,
nor.mean=NULL, nor.var=NULL)


# An example with an invalid target correlation matrix (bound violation).
num_pois<-1
num_bin<-2
num_ord<-2
num_norm<-1
lamvec=c(1)
pbin=c(0.3, 0.7)
pord=list(c(0.2, 0.5), c(0.4, 0.7, 0.8))
nor.mean=2.1
nor.var=0.75
M=c(-0.35, 0.26, 0.34, 0.09, 0.14, 0.12, 0.30, -0.02, 0.17, 0.29, -0.04, 0.19, 
0.10, 0.35, 0.39)
N=diag(6)
N[lower.tri(N)]=M
TV=N+t(N)
diag(TV)<-1
validation_specs(num_pois, num_bin, num_ord, num_norm, corr.mat=TV, pbin, pord,
lamvec, normean, norvar) 


# An example with a non-positive definite correlation matrix.
pbin=c(0.3, 0.7)
TV1=TV
TV1[3,2]=TV[2,3]=5
validation_specs(num_pois, num_bin, num_ord, num_norm, corr.mat=TV1, pbin, pord,
lamvec, normean, norvar) 
}
}

