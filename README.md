<!-- 
START: delete this TODO section, when not needed
# **TODO** When Creating a New Package (Repository)

Repository **`hySpc.read.envi`** is a package template ("hySpc.read.envi") for **`r-hyperspec`** family packages.

When creating a new package (repository):

- [x] replace words `hySpc.read.envi` and `hySpc.read.envi` with the new package name in:
  - [x] `DESCRIPTION`
  - [x] `NEWS.md`
  - [x] `README.md`
  - [x] `LICENSE`
  - [x] `tests/testthat.R`
  - [x] `tests/testthat/test_attached.R`
  - [x] other files
- [x] update `DESCRIPTION`:
  - [x] title
  - [x] description
  - [x] the list of authors and contributors
  - [x] license
  - [x] other fields
- [x] update licensing information in
  - [x] `DESCRIPTION`
  - [x] `LICENSE`
  - [x] `README.md`
  - [x] elswhere
- [x] update `README`:
  - [x] update badges
  - [x] update installation instructions (e.g., instead of `devtools::install(build_vignettes = TRUE)` the following code might be more appropriate if no vignettes are included `devtools::install()`)
  - [x] update other information, if needed.
- [x] create issue labels:
  - [x] apply github labels (in `github-helpers/`),
  - [x] delete `github-helpers/`
- [x] Code & Vignettes:
    - [x] Be sure to review `CONTRIBUTING.md` which describes the standard operating procedures for the `r-hyperspec` project.
    - [x] Copy the code needed for this new package from the original `hyperSpec` files. Leave the old code untouched for now, as `hyperSpec` has to continue to operate.
    - [x] Update the code and write new code as needed.
    - [x] Update unit tests as needed.
    - [x] Update examples as needed.
    - [x] Build and check locally. Chase out the demons.
    - [x] Create a new vignette for this package, starting from the relevant vignette in original `hyperSpec`.
    - [x] Build and check locally again, fixing any remaining problems.
    - [x] Create a pull request as described in `CONTRIBUTING.md`.
    - [x] Rinse and repeat to reach perfection!
- [x] _update this list of TODOs_
- [x] Delete this TODO section.


***
END: delete this TODO section, when not needed
 -->

<!-- ---------------------------------------------------------------------- -->

<!-- badges: start -->
[![CRAN status](https://www.r-pkg.org/badges/version-last-release/hySpc.read.envi)](https://cran.r-project.org/package=hySpc.read.envi)
[![R-CMD-check](https://github.com/r-hyperspec/hySpc.read.envi/workflows/R-CMD-check/badge.svg)](https://github.com/r-hyperspec/hySpc.read.envi/actions)
[![Travis](https://travis-ci.com/r-hyperspec/hySpc.read.envi.svg?branch=develop)](https://travis-ci.com/github/r-hyperspec/hySpc.read.envi)
![Website (pkgdown)](https://github.com/r-hyperspec/hySpc.read.envi/workflows/Website%20(pkgdown)/badge.svg)
[![Codecov](https://codecov.io/gh/r-hyperspec/hySpc.read.envi/branch/develop/graph/badge.svg)](https://codecov.io/gh/r-hyperspec/hySpc.read.envi?branch=develop)
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
<!--[![metacran downloads](https://cranlogs.r-pkg.org/badges/grand-total/hySpc.read.envi)](https://cran.r-project.org/package=hySpc.read.envi)-->
<!--[![metacran downloads](https://cranlogs.r-pkg.org/badges/hySpc.read.envi)](https://cran.r-project.org/package=hySpc.read.envi)-->
<!-- badges: end -->



# R Package **hySpc.read.envi**

[**R**](https://www.r-project.org/) package **hySpc.read.envi** is a member of the [**`r-hyperspec`**](https://r-hyperspec.github.io/) packages family, which imports spectra in ENVI  file formats.

<!-- ---------------------------------------------------------------------- -->

## Documentation

There are two versions of **hySpc.read.envi** online documentation:

a. for the [released version](https://r-hyperspec.github.io/hySpc.read.envi/) of package,  
b. for the [development version](https://r-hyperspec.github.io/hySpc.read.envi/dev/) of package.

The documentation of the other **`r-hyperspec`** family packages can be found at [r-hyperspec.github.io](https://r-hyperspec.github.io/).

<!-- ---------------------------------------------------------------------- -->

## Installation

### Install from CRAN

You can install the released version of **hySpc.read.envi** from [CRAN](https://cran.r-project.org/package=hySpc.read.envi) with:

```r
install.packages("hySpc.read.envi")
```


### Install from GitHub

You can install the development version of the package from [GitHub](https://github.com/r-hyperspec/hySpc.read.envi):

```r
if (!require(remotes)) {install.packages("remotes")}
remotes::install_github("r-hyperspec/hySpc.read.envi")
```

**NOTE 1:**
Usually, "Windows" users need to download, install and properly configure **Rtools** (see [these instructions](https://cran.r-project.org/bin/windows/Rtools/)) to make the code above work.

**NOTE 2:**
This method will **not** install package's documentation (help pages and vignettes) into your computer.
So you can either use the [online documentation](https://r-hyperspec.github.io/) or build the package from source (see the next section).


### Install from Source

1. From the **hySpc.read.envi**'s GitHub [repository](https://github.com/r-hyperspec/hySpc.read.envi):
    - If you use Git, `git clone` the branch of interest.
      You may need to fork it before cloning.
    - Or just chose the branch of interest (1 in Figure below), download a ZIP archive with the code (2, 3) and unzip it on your computer.  
![image](https://user-images.githubusercontent.com/12725868/89338263-ffa1dd00-d6a4-11ea-94c2-fa36ee026691.png)

2. Open the downloaded directory in RStudio (preferably, as an RStudio project).
    - The code below works correctly only if your current working directory coincides with the root of the repository, i.e., if it is in the directory that contains file `README.md`.
    - If you open RStudio project correctly (e.g., by clicking `project.Rproj` icon ![image](https://user-images.githubusercontent.com/12725868/89340903-26621280-d6a9-11ea-8299-0ec5e9cf7e3e.png) in the directory), then the working directory is set correctly by default.

3. In RStudio 'Console' window, run the code (provided below) to:
    a. Install packages **remotes** and **devtools**.
    b. Install **hySpc.read.envi**'s dependencies.
    c. Create **hySpc.read.envi**'s documentation.
    d. Install package **hySpc.read.envi**.

```r
# Do not abort installation even if some packages are not available
Sys.setenv(R_REMOTES_NO_ERRORS_FROM_WARNINGS = "true")

# Install packages remotes and devtools
install.packages(c("remotes", "devtools"))

# Install hySpc.read.envi's dependencies
remotes::install_deps(dependencies = TRUE)

# Create hySpc.read.envi's documentation
devtools::document()

# Install package hySpc.read.envi
devtools::install(build_vignettes = TRUE)
```

**NOTE 1:**
Usually, "Windows" users need to download, install and properly configure **Rtools** (see [these instructions](https://cran.r-project.org/bin/windows/Rtools/)) to make the code above work.
