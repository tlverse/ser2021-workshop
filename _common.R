# same seed across chapters
library(methods)
set.seed(34729)

# fixed knitr chunk options
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  cache = FALSE,
  tidy = FALSE,
  out.width = "80%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618,
  fig.retina = 0.8,
  fig.show = "hold",
  dpi = 300,
  message = FALSE,
  warning = FALSE,
  echo = TRUE
)

# global options
options(
  digits = 5,
  #scipen = 999,
  dplyr.print_min = 5,
  dplyr.print_max = 5,
  crayon.enabled = FALSE,
  bookdown.clean_book = TRUE,
  knitr.kable.NA = "NA",
  repos = structure(c(CRAN = "https://cran.rstudio.com/"))
)

# overwrite options by output type
if (knitr:::is_html_output()) {
  options(width = 80)
}
if (knitr:::is_latex_output()) {
  knitr::opts_chunk$set(width = 67)
  options(width = 67)
  options(cli.unicode = TRUE)
}

# automatically create a bib database for R packages
knitr::write_bib(c(
  .packages(), "bookdown", "knitr", "rmarkdown"
), "packages.bib")
