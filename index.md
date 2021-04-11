---
knit: "bookdown::render_book"
title: "[SER 2021 Workshop] Targeted Learning in the `tlverse`"
subtitle: "Causal Inference Meets Machine Learning"
author: "Mark van der Laan, Alan Hubbard, Jeremy Coyle, Nima Hejazi, Ivana
  Malenica, Rachael Phillips"
date: "updated: April 11, 2021"
documentclass: book
site: bookdown::bookdown_site
bibliography: [book.bib, packages.bib]
biblio-style: apalike
fontsize: '12pt, krantz2'
monofontoptions: "Scale=0.7"
link-citations: yes
colorlinks: yes
lot: yes
lof: yes
always_allow_html: yes
url: 'https\://tlverse.org/ser2021-workshop/'
github-repo: tlverse/ser2021-workshop
graphics: yes
description: "Open source, reproducible teaching materials accompanying a
  workshop on Targeted Learning with the [`tlverse` software
  ecosystem](https://github.com/tlverse), given at the [SER 2021
  Meeting](https://epiresearch.org/annual-meeting/2021-meeting/workshop/) on
  Monday, 07 June 2021."
---

# Welcome! {-}

This open source, reproducible vignette is for a half-day workshop on the
Targeted Learning framework for statistical and causal inference with machine
learning, given at the [SER 2021
Meeting](https://epiresearch.org/annual-meeting/2021-meeting/workshop/) on
Monday, 07 June 2021.  Beyond introducing Targeted Learning, the workshop
focuses on applying the methodology in practice using the [`tlverse` software
ecosystem](https://github.com/tlverse).  These materials are based on a working
draft of the book [*Targeted Learning in `R`: Causal Data Science with the
`tlverse` Software Ecosystem*](https://tlverse.org/tlverse-handbook/), which
includes in-depth discussion of these topics and much more, and may serve as a
useful reference to accompany these workshop materials.

<img style="float: center; margin-right: 1%; margin-bottom: 0.01em"
     src="img/logos/tlverse-logo.svg" width="30%" height="30%">
<img style="float: center; margin-right: 1%; margin-bottom: 0.01em"
     src="img/logos/Rlogo.svg" width="35%" height="35%">
<img style="float: center; margin-right: 1%; margin-bottom: 0.01em"
     src="img/logos/vdl-logo-transparent.svg" width="30%" height="30%">
<p style="clear: both;">
<br>

## Important links {-}

* __Software installation__: Please install the relevant software before the
  workshop using the [installation
  script](https://github.com/tlverse/ser2021-workshop/blob/master/install.R).

* You will probably exceed the GitHub API rate limit during this installation,
  which will throw an error. This issue and the solution are addressed
  [here](#installtlverse).

* __Code__: `R` script files for each section of the workshop are available via
  the GitHub repository for the workshop at
  https://github.com/tlverse/ser2021-workshop/tree/master/R_code

## About this workshop {-}

This workshop will provide a comprehensive introduction to the field of
_Targeted Learning_ for causal inference, and the corresponding [`tlverse` software
ecosystem](https://github.com/tlverse). Emphasis will be placed on targeted
minimum loss-based estimators of the causal effects of single timepoint
interventions, including extensions for missing covariate and outcome data.
These multiply robust, efficient plug-in estimators use state-of-the-art,
ensemble machine learning tools to flexibly adjust for confounding while
yielding valid statistical inference. In particular, we will discuss targeted
estimators of the causal effects of static and dynamic interventions; time
permitting, additional topics to be discussed will include estimation of the
causal effects of optimal dynamic and stochastic interventions.

In addition to discussion, this workshop will incorporate both interactive
activities and hands-on, guided `R` programming exercises, to allow participants
the opportunity to familiarize themselves with methodology and tools that will
translate to real-world data analysis. It is highly recommended for participants
to have an understanding of basic statistical concepts such as confounding,
probability distributions, confidence intervals, hypothesis testing, and
regression. Advanced knowledge of mathematical statistics is useful but not
necessary. Familiarity with the `R` programming language will be essential.

## Outline {-}

* _Warm-up_: The Roadmap of Targeted Learning and [Why We Need A Statistical
  Revolution](https://senseaboutscienceusa.org/super-learning-and-the-revolution-in-knowledge/)
  with an *[introductory video lecture by Mark van der Laan and Alan
  Hubbard](https://www.dropbox.com/s/7b6ru2ahycqq80v/ENAR2021-lecture.mp4?dl=0)*
  (__Please watch this hour-long lecture before the workshop.__)
* 09:00-09:20A: [Introduction to the `tlverse` Software
  Ecosystem](https://tlverse.org) and the [WASH Benefits
  data](http://www.washbenefits.net/)
* 09:20-10:00A: Super learning with the [`sl3` `R`
  package](https://github.com/tlverse/sl3)
* 10:00-10:45A: Programming exercises with `sl3`
* 10:45-11:00A: Break, Discussion, Q&A
* 11:00-11:45A: Targeted Learning for causal inference with the [`tmle3` `R`
  package](https://github.com/tlverse/tmle3)
* 11:45A-12:30P: Programming exercises with `tmle3`
* 12:30-01:00P: Participants' choice (by class vote), from among
  * Optimal treatment regimes with the [`tmle3mopttx` `R`
    package](https://github.com/tlverse/tmle3mopttx)
  * Stochastic treatment regimes with the [`tmle3shift` `R`
    package](https://github.com/tlverse/tmle3shift)
  * Concluding review and discussion

__NOTE: All listings are in Pacific Time.__

## About the instructors {-}

### Mark van der Laan {-}

Mark van der Laan, PhD, is Professor of Biostatistics and Statistics at UC
Berkeley. His research interests include statistical methods in computational
biology, survival analysis, censored data, adaptive designs, targeted maximum
likelihood estimation, causal inference, data-adaptive loss-based learning, and
multiple testing. His research group developed loss-based super learning in
semiparametric models, based on cross-validation, as a generic optimal tool for
the estimation of infinite-dimensional parameters, such as nonparametric density
estimation and prediction with both censored and uncensored data. Building on
this work, his research group developed targeted maximum likelihood estimation
for a target parameter of the data-generating distribution in arbitrary
semiparametric and nonparametric models, as a generic optimal methodology for
statistical and causal inference. Most recently, Mark's group has focused in
part on the development of a centralized, principled set of software tools for
targeted learning, the `tlverse`.

### Alan Hubbard {-}

Alan Hubbard is Professor of Biostatistics, former head of the Division of
Biostatistics at UC Berkeley, and head of data analytics core at UC Berkeley's
SuperFund research program. His current research interests include causal
inference, variable importance analysis, statistical machine learning,
estimation of and inference for data-adaptive statistical target parameters, and
targeted minimum loss-based estimation. Research in his group is generally
motivated by applications to problems in computational biology, epidemiology,
and precision medicine.

### Jeremy Coyle {-}

Jeremy Coyle, PhD, is a consulting data scientist and statistical programmer,
currently leading the software development effort that has produced the
`tlverse` ecosystem of R packages and related software tools. Jeremy earned his
PhD in Biostatistics from UC Berkeley in 2016, primarily under the supervision
of Alan Hubbard.

### Nima Hejazi {-}

Nima Hejazi is a PhD candidate in biostatistics, working under the collaborative
direction of Mark van der Laan and Alan Hubbard. Nima is affiliated with UC
Berkeley's Center for Computational Biology and NIH Biomedical Big Data training
program, as well as with the Fred Hutchinson Cancer Research Center. Previously,
he earned an MA in Biostatistics and a BA (with majors in Molecular and Cell
Biology, Psychology, and Public Health), both at UC Berkeley.  His research
interests fall at the intersection of causal inference and machine learning,
drawing on ideas from non/semi-parametric estimation in large, flexible
statistical models to develop efficient and robust statistical procedures for
evaluating complex target estimands in observational and randomized studies.
Particular areas of current emphasis include mediation/path analysis,
outcome-dependent sampling designs, targeted loss-based estimation, and vaccine
efficacy trials.  Nima is also passionate about statistical computing and open
source software development for applied statistics.

### Ivana Malenica {-}

Ivana Malenica is a PhD student in biostatistics advised by Mark van der Laan.
Ivana is currently a fellow at the Berkeley Institute for Data Science, after
serving as a NIH Biomedical Big Data and Freeport-McMoRan Genomic Engine fellow.
She earned her Master's in Biostatistics and Bachelor's in Mathematics, and
spent some time at the Translational Genomics Research Institute. Very broadly,
her research interests span non/semi-parametric theory, probability theory,
machine learning, causal inference and high-dimensional statistics. Most of her
current work involves complex dependent settings (dependence through time and
network) and adaptive sequential designs.

### Rachael Phillips {-}

Rachael Phillips is a PhD student in biostatistics, advised by Alan Hubbard and
Mark van der Laan. She has an MA in Biostatistics, BS in Biology, and BA in
Mathematics. A student of targeted learning and causal inference; her research
integrates personalized medicine, human-computer interaction, experimental
design, and regulatory policy.

## Reproduciblity with the `tlverse` {#repro}

The `tlverse` software ecosystem is a growing collection of packages, several of
which are quite early on in the software lifecycle. The team does its best to
maintain backwards compatibility. Once this work reaches completion, the
specific versions of the `tlverse` packages used will be archived and tagged to
produce it.

This book was written using [bookdown](http://bookdown.org/), and the complete
source is available on [GitHub](https://github.com/tlverse/tlverse-handbook).
This version of the book was built with R version 4.0.5 (2021-03-31),
[pandoc](https://pandoc.org/) version 2.7.3, and the
following packages:


|package     |version    |source                                |
|:-----------|:----------|:-------------------------------------|
|bookdown    |0.21.10    |Github (rstudio/bookdown\@6854e02)    |
|bslib       |0.2.4.9002 |Github (rstudio/bslib\@85f3b92)       |
|data.table  |1.14.0     |CRAN (R 4.0.5)                        |
|delayed     |0.3.0      |CRAN (R 4.0.5)                        |
|devtools    |2.4.0      |CRAN (R 4.0.5)                        |
|downlit     |0.2.1      |CRAN (R 4.0.5)                        |
|dplyr       |1.0.5      |CRAN (R 4.0.5)                        |
|ggplot2     |3.3.3      |CRAN (R 4.0.5)                        |
|here        |1.0.1      |CRAN (R 4.0.5)                        |
|kableExtra  |1.3.4      |CRAN (R 4.0.5)                        |
|knitr       |1.31       |CRAN (R 4.0.5)                        |
|mvtnorm     |1.1-1      |CRAN (R 4.0.5)                        |
|origami     |1.0.3      |CRAN (R 4.0.5)                        |
|readr       |1.4.0      |CRAN (R 4.0.5)                        |
|rmarkdown   |2.7        |CRAN (R 4.0.5)                        |
|skimr       |2.1.3      |CRAN (R 4.0.5)                        |
|sl3         |1.4.3      |Github (tlverse/sl3\@5cddc6c)         |
|stringr     |1.4.0      |CRAN (R 4.0.5)                        |
|tibble      |3.1.0      |CRAN (R 4.0.5)                        |
|tidyr       |1.1.3      |CRAN (R 4.0.5)                        |
|tidyverse   |1.3.0      |CRAN (R 4.0.5)                        |
|tmle3       |0.2.0      |Github (tlverse/tmle3\@425e21c)       |
|tmle3mopttx |0.1.0      |Github (tlverse/tmle3mopttx\@5ba5f65) |
|tmle3shift  |0.2.0      |Github (tlverse/tmle3shift\@43f6fc0)  |

## Setup instructions {#setup}

### R and RStudio

**R** and **RStudio** are separate downloads and installations. R is the
underlying statistical computing environment. RStudio is a graphical integrated
development environment (IDE) that makes using R much easier and more
interactive. You need to install R before you install RStudio.

#### Windows

##### If you already have R and RStudio installed

* Open RStudio, and click on "Help" > "Check for updates". If a new version is
  available, quit RStudio, and download the latest version for RStudio.
* To check which version of R you are using, start RStudio and the first thing
  that appears in the console indicates the version of R you are
  running. Alternatively, you can type `sessionInfo()`, which will also display
  which version of R you are running. Go on the [CRAN
  website](https://cran.r-project.org/bin/windows/base/) and check whether a
  more recent version is available. If so, please download and install it. You
  can [check here](https://cran.r-project.org/bin/windows/base/rw-FAQ.html#How-do-I-UNinstall-R_003f)
  for more information on how to remove old versions from your system if you
  wish to do so.

##### If you don't have R and RStudio installed

* Download R from
  the [CRAN website](http://cran.r-project.org/bin/windows/base/release.htm).
* Run the `.exe` file that was just downloaded
* Go to the [RStudio download page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select **RStudio x.yy.zzz - Windows
  XP/Vista/7/8** (where x, y, and z represent version numbers)
* Double click the file to install it
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

#### macOS / Mac OS X

##### If you already have R and RStudio installed

* Open RStudio, and click on "Help" > "Check for updates". If a new version is
  available, quit RStudio, and download the latest version for RStudio.
* To check the version of R you are using, start RStudio and the first thing
  that appears on the terminal indicates the version of R you are running.
  Alternatively, you can type `sessionInfo()`, which will also display which
  version of R you are running. Go on the [CRAN
  website](https://cran.r-project.org/bin/macosx/) and check whether a more
  recent version is available. If so, please download and install it.

##### If you don't have R and RStudio installed

* Download R from
  the [CRAN website](http://cran.r-project.org/bin/macosx).
* Select the `.pkg` file for the latest R version
* Double click on the downloaded file to install R
* It is also a good idea to install [XQuartz](https://www.xquartz.org/) (needed
  by some packages)
* Go to the [RStudio download
  page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select **RStudio x.yy.zzz - Mac OS X 10.6+ (64-bit)**
  (where x, y, and z represent version numbers)
* Double click the file to install RStudio
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

#### Linux

* Follow the instructions for your distribution
  from [CRAN](https://cloud.r-project.org/bin/linux), they provide information
  to get the most recent version of R for common distributions. For most
  distributions, you could use your package manager (e.g., for Debian/Ubuntu run
  `sudo apt-get install r-base`, and for Fedora `sudo yum install R`), but we
  don't recommend this approach as the versions provided by this are
  usually out of date. In any case, make sure you have at least R 3.3.1.
* Go to the [RStudio download
  page](https://www.rstudio.com/products/rstudio/download/#download)
* Under *Installers* select the version that matches your distribution, and
  install it with your preferred method (e.g., with Debian/Ubuntu `sudo dpkg -i
  rstudio-x.yy.zzz-amd64.deb` at the terminal).
* Once it's installed, open RStudio to make sure it works and you don't get any
  error messages.

These setup instructions are adapted from those written for [Data Carpentry: R
for Data Analysis and Visualization of Ecological
Data](http://www.datacarpentry.org/R-ecology-lesson/).
