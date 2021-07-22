## ----cleanup-hyperspec, include = FALSE---------------------------------------
# Clean up to ensure reproducible workspace ----------------------------------
rm(list = ls(all.names = TRUE))

## ----setup, include = FALSE-----------------------------------------------------------------------
# Packages -------------------------------------------------------------------
library(hySpc.read.ENVI)

# Functions ------------------------------------------------------------------
source("vignette-functions.R", encoding = "UTF-8")

# Settings -------------------------------------------------------------------
source("vignette-default-settings.R", encoding = "UTF-8")

# Temporary options ----------------------------------------------------------
# Change the value of this option in "vignette-default-settings.R"
show_reviewers_notes = getOption("show_reviewers_notes", TRUE)

## ----bib, echo = FALSE, paged.print = FALSE-------------------------------------------------------
dir.create("resources", showWarnings = FALSE)
knitr::write_bib(
  c("hyperSpec"),
  file = "resources/intro-pkg.bib"
)

## ---- echo = FALSE, results = "asis"--------------------------------------------------------------
res <- knitr::knit_child("list-of-vignettes.md", quiet = TRUE)
cat(res, sep = '\n')

## -------------------------------------------------------------------------------------------------
filename <- system.file("extdata", "HySpexNIR.hyspex", package="hySpc.read.ENVI")
hyspex <- hySpc.read.ENVI::read_ENVI_HySpex(filename)

filename <- system.file("extdata", "toy.bil", package="hySpc.read.ENVI")
toy <- hySpc.read.ENVI::read_ENVI(filename)

