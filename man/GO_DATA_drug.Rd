\name{GO_DATA_drug}
\alias{GO_DATA_drug}
\title{GO annotation environment of GO-drug mappings} 
\description{
It is an intermediate file storing the GO annotation environment of GO-drug 
mappings (GO term to drug sets, drug to GO terms, GO term ID to description, 
GO ID to ontology) 
used for \code{dsea_*} methods in \code{signatureSearch} package to do GO 
enrichment analysis to accelerate the speed by avoiding building this 
environment every time running the dsea functions 
}

\seealso{
    \code{dsea}
}

\examples{
library(AnnotationHub)
ah <- AnnotationHub()
qr <- query(ah, c("signatureSearchData", "GO_DATA"))
# GO_DATA_drug <- qr[["AH69087"]]
}

\keyword{datasets}

