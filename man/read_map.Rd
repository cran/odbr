% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_map.R
\name{read_map}
\alias{read_map}
\title{Download spatial data from OD Surveys databases}
\usage{
read_map(city = "São Paulo", year = 2017, harmonize = FALSE, geometry = "zone")
}
\arguments{
\item{city}{Character. City of reference. Defaults to "São Paulo".}

\item{year}{Numeric. Year of reference in the format \code{yyyy}. Defaults to
\code{1977}.}

\item{harmonize}{Logical. When \code{FALSE} (Default), the function returns the raw
data. If \code{TRUE}, the function returns harmonized data to the same
city, across all the years.}

\item{geometry}{Character. The type of spatial data to be opened. Options
include \code{c("zone","district", "municipality")}.}
}
\value{
An \verb{"sf" "data.frame"} object
}
\description{
\code{read_map()} download the geodetic data for a specific Origin Destination survey
and return it as an sf dataframe. It uses the cached data file if it was
previously downloaded to avoid extra networking consumption. To understand
the returned dataframe format, please reefer to the \code{read_dictionary()}
function for the same survey cohort.
It is also necessary to specify the geometry granularity wanted, be it
"municipality", "district" or "zone" level of details. Of course, not all
geometries are available for all surveys.
}
\examples{
\dontshow{if (identical(tolower(Sys.getenv("NOT_CRAN")), "true")) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
library(odbr)

# return zone data from OD Surveys database as sf object at a given city and year
df <- read_map(
  city = "Sao Paulo",
  year = 2017,
  harmonize = FALSE,
  geometry = "zone"
)

#' # return district data from OD Surveys database as sf object at a given city and year
df <- read_map(
  city = "Sao Paulo",
  year = 2017,
  harmonize = FALSE,
  geometry = "district"
)

# return municipality data from OD Surveys database as sf object at a given city and year
df <- read_map(
  city = "Sao Paulo",
  year = 2017,
  harmonize = FALSE,
  geometry = "municipality"
)
\dontshow{\}) # examplesIf}
}
\concept{Geometry}
