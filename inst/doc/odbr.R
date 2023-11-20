## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = identical(tolower(Sys.getenv("NOT_CRAN")), "true")
)

## ----example------------------------------------------------------------------
#  library(odbr)
#  
#  # Return data from OD Surveys database as data.frame
#  df <- read_od(
#    city = "Sao Paulo",
#    year = 1977,
#    harmonize = FALSE
#  )
#  
#  # Return zone data from OD Surveys database as sf object at a given city and year
#  df <- read_map(
#    city = "Sao Paulo",
#    year = 1977,
#    harmonize = FALSE,
#    geometry = "zone"
#  )
#  
#  # Return data dictionary from OD Surveys, as data.frame, at a given city and year
#  df <- read_dictionary(
#    city = "Sao Paulo",
#    year = 1977,
#    harmonize = FALSE,
#    language = "pt"
#  )

