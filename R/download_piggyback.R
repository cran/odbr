#' Download file from odbr using piggyback
#'
#' @param filename_to_download String. The name of the file to be downloaded.
#'
#' @return A string with the path to the file saved in a tempdir
#'
#' @keywords internal
download_piggyback <- function(filename_to_download) {
  # Defining our temporary directory
  temp_dest_dir <- tempdir(check = TRUE)

  # Creating the temporary folder effectively
  fs::dir_create(path = temp_dest_dir, recurse = TRUE)

  # Creating path + filename and saving to "temporary_filename"
  temp_full_file_path <- paste0(temp_dest_dir, "/", filename_to_download)

  # downloading the file from a release of the odbr repo - release specified in
  # the parameter
  try(
    silent = TRUE,
    piggyback::pb_download(
      file = filename_to_download,
      repo = "hsvab/odbr",
      dest = temp_dest_dir
    )
  )

  # Halt function if download failed
  if (!file.exists(temp_full_file_path)) {
    message("Internet connection not working properly.")
    return(invisible(NULL))
  } else {
    # return string with the path to the file saved in a tempdir
    return(temp_full_file_path)
  }
}
