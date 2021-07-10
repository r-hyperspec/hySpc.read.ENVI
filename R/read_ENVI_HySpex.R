#' @describeIn  read_ENVI
#' @include read_ENVI.R
#' @export
#'
#' @concept io
#'
read_ENVI_HySpex <- function(file = stop("read_ENVI_HySpex: file name needed"),
                             headerfile = NULL, header = list(), keys.hdr2data = NULL, ...) {
  headerfile <- .find_ENVI_header(file, headerfile)
  keys <- readLines(headerfile)
  keys <- .read_ENVI_split_header(keys)
  keys <- keys[c("pixelsize x", "pixelsize y", "wavelength units")]

  header <- modifyList(keys, header)

  ## most work is done by read_ENVI
  spc <- read_ENVI(file = file, headerfile = headerfile, header = header, ...,
    pull.header.lines = FALSE)

  label <- list(
    x = "x / pixel",
    y = "y / pixel",
    spc = "I / a.u.",
    .wavelength = as.expression(bquote(lambda / .(u), list(u = keys$`wavelength units`)))
  )

  labels(spc) <- label

  spc
}

hySpc.testthat::test(read_ENVI_HySpex) <- function() {
  context("read_ENVI_HySpex")

  test_that("Hyspex ENVI file", {
    skip_if_not_fileio_available()
    expect_known_hash(
      read_ENVI_HySpex("fileio/ENVI/HySpexNIR.hyspex"),
      "cf35ba92334f22513486f25c5d8ebe32"
    )
  })
}
