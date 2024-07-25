

<!-- README.md is rendered from README.qmd. Edit README.qmd and render to update README.md -->

# {`lovecraftr`} <img src="man/figures/logo.png" align="right" height="139" alt="H. P. Lovecraft's signature in an R package hexagon"/>

[![R-CMD-check](https://github.com/jrdnbradford/lovecraftr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/jrdnbradford/lovecraftr/actions/workflows/R-CMD-check.yaml)
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

{`lovecraftr`} contains H. P. Lovecraft’s corpus as R datasets for
textual analysis. This repository contains both the raw txt files and
RDA files. See the
[reference](https://jrdnbradford.github.io/lovecraftr/reference/index.html)
for the list of available works.

## Installation

Install from [GitHub](https://github.com/jrdnbradford/lovecraftr/) using
{[`devtools`](https://devtools.r-lib.org/)}:

``` r
# install.packages("devtools")
devtools::install_github("jrdnbradford/lovecraftr")
```

or {[`remotes`](https://remotes.r-lib.org//)}:

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

or

``` r
data("lovecraft")
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
