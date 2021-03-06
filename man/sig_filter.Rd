% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/meta_filter.R
\name{sig_filter}
\alias{sig_filter}
\title{LINCS signature meta data filter}
\usage{
sig_filter(meta, pert_type = "trt_cp", dose, time = "24 h")
}
\arguments{
\item{meta}{tibble, read in from LINCS signature info meta data}

\item{pert_type}{perturbation type, 'trt_cp' represents compound. Description
of other 'pert_type' can be found at GEO CMap LINCS User Guide v2.1 
\url{https://docs.google.com/document/d/1rbHBy3DKekFm9lZouRG-ZcfLmCsfkUKzGPxxjqxPlYw/edit#}}

\item{dose}{dose/concentration of compound treatment, need to match elements
in 'pert_idose' column of 'meta'}

\item{time}{compound treatment time, need to match elements in 'pert_itime' 
column of 'meta'}
}
\value{
tibble
}
\description{
Filter LINCS level5 signatures at specific concentration and treatment time
}
\examples{
meta <- data.frame(pert_idose=c("2 um","4 um", "10 um"), 
                   pert_itime="24 h",
                   pert_type="trt_cp", pert_iname=c("p1","p2","p3"),
                   cell_id="MCF7")
sig_filter(meta, dose="2 um")
}
