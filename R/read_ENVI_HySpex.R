# Function -------------------------------------------------------------------
#' @describeIn  read_ENVI
#' @include read_ENVI.R
#' @export

read_ENVI_HySpex <- function(file = stop("read_ENVI_HySpex: file name needed"),
                             headerfile = NULL, header = list(), keys.hdr2data = NULL, ...) {
  headerfile <- .find_ENVI_header(file, headerfile)
  keys <- readLines(headerfile)
  keys <- .read_ENVI_split_header(keys)
  keys <- keys[c("pixelsize x", "pixelsize y", "wavelength units")]

  header <- modifyList(keys, header)

  ## most work is done by read_ENVI
  spc <- read_ENVI(
    file = file, headerfile = headerfile, header = header, ...,
    pull.header.lines = FALSE
  )

  label <- list(
    x = "x / pixel",
    y = "y / pixel",
    spc = "I / a.u.",
    .wavelength = as.expression(bquote(lambda / .(u), list(u = keys$`wavelength units`)))
  )

  labels(spc) <- label

  spc
}

# Unit tests -----------------------------------------------------------------

hySpc.testthat::test(read_ENVI_HySpex) <- function() {
  context("read_ENVI_HySpex")

  filename <- system.file("extdata", "HySpexNIR.hyspex",
    package = "hySpc.read.ENVI"
  )

  test_that("Hyspex ENVI file", {
    spc_hyspex <- read_ENVI_HySpex(filename)

    expect_equal(dim(spc_hyspex), c(nrow = 4992L, ncol = 4L, nwl = 288L))
    expect_equivalent(spc_hyspex[[2, , 1000]], 186)
    expect_equivalent(spc_hyspex[[4990, , 2200]], 169)

    expect_equal(round(wl(spc_hyspex)[31], 2), 1117.64)
    expect_equal(round(spc_hyspex@wavelength[119], 2), 1594.75)

    expect_equal(spc_hyspex@label[[1]], "x / pixel")
    expect_equal(spc_hyspex@label[[3]], "I / a.u.")
  })
}
