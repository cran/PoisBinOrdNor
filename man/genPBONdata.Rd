\name{genPBONdata}
\alias{genPBONdata}
\title{Generates correlated data with multiple count, binary, ordinal and normal variables}
\description{
This function simulates a multivariate data set that is composed of count, binary, ordinal and normal variables
with specified marginals and a correlation matrix.
}
\usage{
genPBONdata(n, no_pois, no_bin, no_ord, no_norm, inter.mat, lamvec, prop_vec_bin,
 prop_vec_ord, nor.mean, nor.var)
}
\arguments{
  \item{n}{Number of rows}
  \item{no_pois}{Number of count variables}
  \item{no_bin}{Number of binary variables}
  \item{no_ord}{Number of ordinal variables}
  \item{no_norm}{Number of normal variables}
  \item{inter.mat}{The intermediate correlation matrix obtained from function intermat}
  \item{lamvec}{A vector of marginal rates for the count variables}
  \item{prop_vec_bin}{A vector of probabilities for the binary variables}
  \item{prop_vec_ord}{
A vector of probabilities for the ordinal variables. For each of the variable, the i-th element of the pvec is the 
cumulative probability defining the marginal distribution of the ordinal variable. If the variable has k categories, 
the i-th element of p will contain k-1 probabilities. The k-th element is implicitly 1.
}
  \item{nor.mean}{
A vector of means for the normal variables
}
  \item{nor.var}{
A vector of variances for the normal variables
}
}

\value{
  \item{data}{A simulated data matrix of size nx(no_pois + no_bin + no_ord + no_norm), of which the first no_pois are count variables, 
        followed by no_bin binary variables, no_ord ordinal variables, and lastly no_norm normal variables.}
  \item{n.rows}{Number of rows in the simulated data}
  \item{prob.bin}{A vector of probabilities for the binary variables}
  \item{prob.ord}{A vector of probabilities for the ordinal variables}
  \item{nor.mean}{A vector of means for the normal variables}
  \item{nor.var}{A vector of variances for the normal variables}
  \item{lamvec}{A vector of rate parameters for the count variables}
  \item{n.pois}{Number of count variables}
  \item{n.bin}{Number of binary variables}
  \item{n.ord}{Number of ordinal variables}
  \item{n.norm}{Number of normal variables}
  \item{final.corr}{The final correlation matrix for the simulated data}
}

\examples{
\dontrun{

ss=10000
num_pois<-2
num_bin<-1
num_ord<-2
num_norm<-1

lamvec=sample(10,2)
pbin=runif(1)
pord=list(c(0.1, 0.9), c(0.2, 0.3, 0.5))
nor.mean=3.1
nor.var=0.85
M=c(-0.05, 0.26, 0.14, 0.09, 0.14, 0.12, 0.13, -0.02, 0.17, 0.29, 
-0.04, 0.19, 0.10, 0.35, 0.39)
N=diag(6)
N[lower.tri(N)]=M
TV=N+t(N)
diag(TV)<-1
intmat<-intermatnew(num_pois,num_bin,num_ord,num_norm,corr_mat=TV,pbin,pord,lamvec,
nor.mean,nor.var)

genPBONdata(ss,num_pois,num_bin,num_ord,num_norm,intmat,lamvec,pbin,pord,nor.mean,nor.var)
}
}
