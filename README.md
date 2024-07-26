

<!-- README.md is rendered from README.qmd. Edit README.qmd and render to update README.md -->

# {`lovecraftr`} <img src="man/figures/logo.png" align="right" height="139" alt="H. P. Lovecraft's signature in an R package hexagon"/>

<!-- badges: start -->

[![R-CMD-check](https://github.com/jrdnbradford/lovecraftr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/jrdnbradford/lovecraftr/actions/workflows/R-CMD-check.yaml)
[![dataset-check](https://github.com/jrdnbradford/lovecraftr/actions/workflows/dataset-check.yaml/badge.svg)](https://github.com/jrdnbradford/lovecraftr/actions/workflows/dataset-check.yaml)
![GitHub R package
version](https://img.shields.io/github/r-package/v/jrdnbradford/lovecraftr.png)
[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
<!-- badges: end -->

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

{`lovecraftr`} contains H. P. Lovecraft’s corpus as R datasets for
textual analysis. This repository contains both the raw text files and
RDA files. See the [package index
reference](https://jrdnbradford.github.io/lovecraftr/reference/index.html)
for the list of available works.

## Installation

Install from [GitHub](https://github.com/jrdnbradford/lovecraftr/) using
any of the methods below.

### {[`devtools`](https://devtools.r-lib.org/)}

``` r
# install.packages("devtools")
devtools::install_github("jrdnbradford/lovecraftr")
```

### {[`remotes`](https://remotes.r-lib.org/)}

``` r
# install.packages("remotes")
remotes::install_github("jrdnbradford/lovecraftr")
```

### {[`pak`](https://pak.r-lib.org/)}

``` r
# install.packages("pak")
pak::pkg_install("jrdnbradford/lovecraftr")
```

## Usage

See the [package index
reference](https://jrdnbradford.github.io/lovecraftr/reference/index.html)
for documentation on works and usage.

Once the package is loaded, character vectors of individual works can be
accessed in several ways.

You can load a dataset into the environment directly using:

``` r
data(the_call_of_cthulhu)
```

You can also assign a dataset to a variable:

``` r
corpus <- lovecraft

corpus |>
  dplyr::filter(title == "The Call of Cthulhu") |>
  head()
#> # A tibble: 6 × 2
#>   title               text                                                      
#>   <chr>               <chr>                                                     
#> 1 The Call of Cthulhu "THE CALL OF CTHULHU"                                     
#> 2 The Call of Cthulhu ""                                                        
#> 3 The Call of Cthulhu "Of such great powers or beings there may be conceivably …
#> 4 The Call of Cthulhu "of a hugely remote period when...consciousness was manif…
#> 5 The Call of Cthulhu "shapes and forms long since withdrawn before the tide of…
#> 6 The Call of Cthulhu "humanity...forms of which poetry and legend alone have c…
```

## Contributing

See [CONTRIBUTING.md](./.github/CONTRIBUTING.md).

## License

MIT. See [LICENSE.md](./LICENSE.md).

## Citation

Please cite this package if you use it.

``` r
citation("lovecraftr")
#> To cite package 'lovecraftr' in publications use:
#> 
#>   Bradford J (2024). _lovecraftr: H. P. Lovecraft's works, for text
#>   analysis_. <https://github.com/jrdnbradford/lovecraftr/>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {lovecraftr: H. P. Lovecraft's works, for text analysis},
#>     author = {Jordan Bradford},
#>     year = {2024},
#>     url = {https://github.com/jrdnbradford/lovecraftr/},
#>   }
```
