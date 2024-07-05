# {lovecraftr}


<!-- README.md is rendered from README.qmd. Edit README.qmd and render to update README.md -->

<img src="man/figures/logo.png" align="right" height="139" alt="H. P. Lovecraft's signature in an R package hexagon"/>

[![R-CMD-check](https://github.com/jrdnbradford/lovecraftr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/jrdnbradford/lovecraftr/actions/workflows/R-CMD-check.yaml)
[![README-check](https://github.com/jrdnbradford/lovecraftr/actions/workflows/README-check.yaml/badge.svg)](https://github.com/jrdnbradford/lovecraftr/actions/workflows/README-check.yaml)
[![dataset-check](https://github.com/jrdnbradford/lovecraftr/actions/workflows/dataset-check.yaml/badge.svg)](https://github.com/jrdnbradford/lovecraftr/actions/workflows/dataset-check.yaml)

> The most merciful thing in the world, I think, is the inability of the
> human mind to correlate all its contents. We live on a placid island
> of ignorance in the midst of black seas of infinity, and it was not
> meant that we should voyage far. The sciences, each straining in its
> own direction, have hitherto harmed us little; but some day the
> piecing together of dissociated knowledge will open up such terrifying
> vistas of reality, and of our frightful position therein, that we
> shall either go mad from the revelation or flee from the light into
> the peace and safety of a new dark age.

\-[H. P. Lovecraft](https://en.wikipedia.org/wiki/H._P._Lovecraft), *The
Call of Cthulhu*

## H. P. Lovecraft Datasets

This package contains H. P. Lovecraft’s corpus as R datasets for textual
analysis.

## Installation

Install from [GitHub](https://github.com/jrdnbradford/lovecraftr/) using
{[devtools](https://devtools.r-lib.org/)}:

``` r
# install.packages("devtools")
devtools::install_github("jrdnbradford/lovecraftr")
```

or {[remotes](https://remotes.r-lib.org//)}:

``` r
# install.packages("remotes")
remotes::install_github("jrdnbradford/lovecraftr")
```

## Usage

Character vectors of individual works can be accessed in several ways:

``` r
cthulhu <- lovecraftr::the_call_of_cthulhu
head(cthulhu)
#> [1] "THE CALL OF CTHULHU"                                                            
#> [2] ""                                                                               
#> [3] "Of such great powers or beings there may be conceivably a survival...a survival"
#> [4] "of a hugely remote period when...consciousness was manifested, perhaps, in"     
#> [5] "shapes and forms long since withdrawn before the tide of advancing"             
#> [6] "humanity...forms of which poetry and legend alone have caught a flying memory"
```

or

``` r
data("the_call_of_cthulhu")
```

The entire corpus can be accessed as a tibble with:

``` r
corpus <- lovecraftr::lovecraft_corpus()

corpus |>
  dplyr::filter(title == "THE CALL OF CTHULHU") |>
  head()
#> # A tibble: 6 × 2
#>   title               text                                                      
#>   <chr>               <chr>                                                     
#> 1 THE CALL OF CTHULHU "THE CALL OF CTHULHU"                                     
#> 2 THE CALL OF CTHULHU ""                                                        
#> 3 THE CALL OF CTHULHU "Of such great powers or beings there may be conceivably …
#> 4 THE CALL OF CTHULHU "of a hugely remote period when...consciousness was manif…
#> 5 THE CALL OF CTHULHU "shapes and forms long since withdrawn before the tide of…
#> 6 THE CALL OF CTHULHU "humanity...forms of which poetry and legend alone have c…
```

or

``` r
data("lovecraft")
```

## Contributing

See [CONTRIBUTING.md](/.github/CONTRIBUTING.md).

## Changelog

See [CHANGELOG.md](/CHANGELOG.md)
