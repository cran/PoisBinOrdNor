\name{PoisBinOrdNor-package}
\alias{PoisBinOrdNor-package}
\alias{PoisBinOrdNor}
\docType{package}
\title{Data Generation with Count, Binary, Ordinal and Normal Components}
\description{Generation of multiple count, binary, ordinal and normal variables simultaneously given the marginal characteristics and association structure based on the methodologies proposed in Demirtas et al. (2012), Demirtas and Yavuz (2015), Amatya and Demirtas (2016), Demirtas and Hedeker (2016).}
\details{
\tabular{ll}{
Package: \tab PoisBinOrdNor\cr
Type: \tab Package\cr
Version: \tab 1.6\cr
Date: \tab 2019-02-27\cr
License: \tab GPL-2 | GPL-3 \cr
}PoisBinOrdNor package consists of ten functions. The function \code{\link{validation.specs}} validates the specificed quantities to avoid obvious specification errors. 
The functions \code{\link{corr.nn4bb}}, \code{\link{corr.nn4bn}}, \code{\link{corr.nn4on}}, \code{\link{corr.nn4pbo}}, \code{\link{corr.nn4pn}}, and \code{\link{corr.nn4pp}} 
each computes the intermediate correlation coefficient for binary-binary combinations, binary-normal combinations, ordinal-normal combinations, count-binary/ordinal combinations,
 count-normal and count-count combinations, respectively.
The function \code{\link{intermat}} assembles the intermediate correlation matrix for the multivaraite data based on input from functions \code{\link{corr.nn4bb}}, 
\code{\link{corr.nn4bn}}, \code{\link{corr.nn4on}}, \code{\link{corr.nn4pbo}}, \code{\link{corr.nn4pn}} and \code{\link{corr.nn4pp}}. 
The engine function \code{\link{genPBONdata}} computes the final correlation matrix and generates mixed data in accordance with the specified marginal and correlational quantities.
}
\author{
Hakan Demirtas, Yiran Hu, Rawan Allozi, Ran Gao

Maintainer: Ran Gao <rgao8@uic.edu>
}
\references{
Amatya, A. & Demirtas, H. (2015). Simultaneous generation of multivariate mixed data with Poisson and normal marginals. Journal of Statistical Computation and Simulation, 85(15), 3129-3139.

Demirtas, H. & Doganay, B. (2012). Simultaneous generation of binary and normal data with specified marginal and association structures. Journal of Biopharmaceutical Statistics, 22(2), 223-236. 

Demirtas, H. & Hedeker, D. (2011). A practical way for computing approximate lower and upper correlation bounds. The American Statistician, 65(2), 104-109. 

Demirtas, H. & Hedeker, D. (2016). Computing the point-biserial correlation under any underlying continuous distribution. Communications in Statistics--Simulation and Computation, 45(8), 2744-2751. 

Demirtas, H., Hedeker, D. & Mermelstein, R. J. (2012). Simulation of massive public health data by power polynomials. Statistics in Medicine, 31(27), 3337-3346. 

Demirtas, H. & Yavuz, Y. (2015). Concurrent generation of ordinal and normal data. Journal of Biopharmaceutical Statistics, 25(4), 635-650. 

Ferrari, P.A. and Barberio, A. (2012). Simulating ordinal data. Multivariate Behavioral Research, 47(4), 566-589.

Yahav, I. & Shmueli, G. (2012). On generating multivariate Poisson data in management science applications. Applied Stochastic Models in Business and Industry, 28(1), 91-102. 
}

\keyword{concurrent generation of count, binary, ordinal and normal variables}
\keyword{generating multivariate count variables}
\keyword{generating multivariate binary variables}
\keyword{generating multivariate ordinal variables}
\keyword{generating multivariate normal variables}
