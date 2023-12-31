% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_od.R
\name{read_od}
\alias{read_od}
\title{Download microdata from OD Surveys databases}
\usage{
read_od(city = "São Paulo", year = 2017, harmonize = FALSE)
}
\arguments{
\item{city}{Character. City of reference. Defaults to "São Paulo".}

\item{year}{Numeric. Year of reference in the format \code{yyyy}. Defaults to
\code{1977}.}

\item{harmonize}{Logical. When \code{FALSE} (Default), the function returns the raw
data. If \code{TRUE}, the function returns harmonized data to the same
city, across all the years.}
}
\value{
A \code{"data.frame"} object.
}
\description{
\code{read_od()} download the data for a specific Origin Destination survey and
return it as a dataframe. It uses the cached data file if it was previously
downloaded to avoid extra networking consumption. To understand the returned
dataframe format, please reefer to the \code{read_dictionary()} function for the
same survey cohort.
}
\examples{
\dontshow{if (identical(tolower(Sys.getenv("NOT_CRAN")), "true")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
library(odbr)

# return data from OD Surveys database as data.frame
df <- read_od(
  city = "Sao Paulo",
  year = 2017,
  harmonize = FALSE
)
\dontshow{\}) # examplesIf}
}
\concept{Microdata}
