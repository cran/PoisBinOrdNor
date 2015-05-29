\name{PoisBinOrdNor-package}
\alias{PoisBinOrdNor-package}
\alias{PoisBinOrdNor}
\docType{package}
\title{Data Generation with Count, Binary, Ordinal and Normal Components}
\description{Generation of multiple count, binary, ordinal and normal variables simultaneously given the marginal characteristics and association structure
 based on the methodologies proposed in Demirtas et al. (2012), Demirtas and Yavuz (2015), Amatya and Demirtas (2016), Demirtas and Hedeker (2016).}
\details{
\tabular{ll}{
Package: \tab PoisBinOrdNor\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-05-18\cr
License: \tab GPL (>= 2)\cr
}PoisBinOrdNor package consists of ten functions. The function \code{\link{validation_specs}} validates the specificed quantities to avoid obvious specification errors. 
The functions \code{\link{corr.nn4bb}}, \code{\link{corr.nn4bn}}, \code{\link{corr.nn4on}}, \code{\link{corr.nn4pbo}}, \code{\link{corr.nn4pn}}, and \code{\link{corr.nn4pp}} 
each computes the intermediate correlation coefficient for binary-binary combinations, binary-normal combinations, ordinal-normal combinations, count-binary/ordinal combinations,
 count-normal and count-count combinations, respectively.
The function \code{\link{intermat}} assembles the intermediate correlation matrix for the multivaraite data based on input from functions \code{\link{corr.nn4bb}}, 
\code{\link{corr.nn4bn}}, \code{\link{corr.nn4on}}, \code{\link{corr.nn4pbo}}, \code{\link{corr.nn4pn}} and \code{\link{corr.nn4pp}}. 
The engine function \code{\link{genPBONdata}} computes the final correlation matrix and generates mixed data in accordance with the specified marginal and correlational quantities.
}
\author{
Yiran Hu, Hakan Demirtas

Maintainer: Yiran Hu <yhu50@uic.edu>
}
\references{Amatya, A. & Demirtas, H. (2016). Simultaneous generation of multivariate mixed data with Poisson and normal marginals. Journal of Statistical Computation and Simulation. In press. 

Demirtas, H. & Hedeker, D. (2011). A practical way for computing approximate lower and upper correlation bounds. The American Statistician, Volume 65(2), 104-109. 

Demirtas, H. & Doganay, B. (2012). Simultaneous generation of binary and normal data with specified marginal and association structures. Journal of Biopharmaceutical Statistics, Volume 22, Issue 2, 223-236. 

Demirtas, H., Hedeker, D. & Mermelstein, R. J. (2012). Simulation of massive public health data by power polynomials. Statistics in Medicine, Volume 31(27), 3337-3346. 

Yahav, I. & Shmueli, G. (2012). On generating multivariate Poisson data in management science applications. Applied Stochastic Models in Business and Industry, Volume 28(1), 91-102. 

Demirtas, H. & Hedeker, D. (2016). Computing the point-biserial correlation under any underlying continuous distribution. Forthcoming in Communications in Statistics--Simulation and Computation. 

Demirtas, H. & Yavuz, Y. (2015). Concurrent generation of ordinal and normal data. Forthcoming in Journal of Biopharmaceutical Statistics. 

Ferrari, P.A. and Barberio, A. (2012). Simulating ordinal data. Multivariate Behavioral Research, 47(4), 566-589.

}

\keyword{concurrent generation of count, binary, ordinal and normal variables}
\keyword{generating multivariate count variables}
\keyword{generating multivariate binary variables}
\keyword{generating multivariate ordinal variables}
\keyword{generating multivariate normal variables}
