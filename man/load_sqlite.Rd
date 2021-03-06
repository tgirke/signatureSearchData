% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/load_fct.R
\name{load_sqlite}
\alias{load_sqlite}
\title{Load dtlink database}
\usage{
load_sqlite(ah_id)
}
\arguments{
\item{ah_id}{AnnotationHub unique identifiers, of the form "AH12345",
of the hub records.}
}
\value{
SQLiteConnection
}
\description{
Load "dtlink_db_clue_sti" SQLite database into R by returning the
connection to the SQLite file.
}
\details{
The `dtlink_db_clue_sti` database is stored in \code{\link{AnnotationHub}}
}
\examples{
library(AnnotationHub)
ah <- AnnotationHub()
qr <-query(ah, c("signatureSearchData", "dtlink"))
conn <- load_sqlite("AH69083")
RSQLite::dbListTables(conn)
RSQLite::dbDisconnect(conn)
}
\seealso{
\code{\link{dtlink_db_clue_sti}}, \code{\link[AnnotationHub]{AnnotationHub}}
}
