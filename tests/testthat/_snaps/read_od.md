# read_od() works

    Code
      read_od(city = "Manaus", year = 1977, harmonize = FALSE)
    Condition
      Error:
      ! There is no data for:
         - city: Manaus
         - year: 1977
         - harmonized: FALSE
      Check the metadata object for available data.

---

    Code
      read_od(city = "São Paulo", year = 1978, harmonize = FALSE)
    Condition
      Error:
      ! There is no data for:
         - city: São Paulo
         - year: 1978
         - harmonized: FALSE
      Check the metadata object for available data.

---

    Code
      read_od(city = "São Paulo", year = 1977, harmonize = TRUE)
    Condition
      Error:
      ! There is no data for:
         - city: São Paulo
         - year: 1977
         - harmonized: TRUE
      Check the metadata object for available data.

