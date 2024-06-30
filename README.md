# {`lovecraftr`} <img src="inst/stickers/signature.png" alt="H. P. Lovecraft's signature in an R package hexagon" width="150" align="right"/>

> The most merciful thing in the world, I think, is the inability of the human mind to correlate all its contents. We live on a placid island of ignorance in the midst of black seas of infinity, and it was not meant that we should voyage far. The sciences, each straining in its own direction, have hitherto harmed us little; but some day the piecing together of dissociated knowledge will open up such terrifying vistas of reality, and of our frightful position therein, that we shall either go mad from the revelation or flee from the light into the peace and safety of a new dark age.

*The Call of Cthulhu*

## H. P. Lovecraft's Works

This package contains H. P. Lovecraft's corpus in both [raw txt form](/data-raw/corpus/) and [R's native RDA format](/data/) for text processing.

Character vectors of individual works can be access in several ways:
```R
cthulhu <- lovecraftr::the_call_of_cthulhu
# or
data("the_call_of_cthulhu")
```

The entire corpus can be accessed as a `data.frame`/`tbl_df` with:
```R
corpus <- lovecraftr::lovecraft()
# or
data("lovecraft")
```

## Installation

Install from [GitHub](https://github.com/) using {[devtools](https://devtools.r-lib.org/)}:

```R
# install.packages("devtools")
devtools::install_github("jrdnbradford/lovecraftr")
```

## Contributing
See [CONTRIBUTING.md](.github/CONTRIBUTING.md).
