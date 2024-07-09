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

{`lovecraftr`} contains H. P. Lovecraft’s corpus as R datasets for
textual analysis. This repository contains both the raw txt files and
RDA files. See [H. P. Lovecraft Datasets](#h-p-lovecraft-datasets) below
for the list of available works.

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

See [CONTRIBUTING.md](./.github/CONTRIBUTING.md).

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

## H. P. Lovecraft Datasets

| Title | TXT | RDA |
|:---|:---|:---|
| AT THE MOUNTAINS OF MADNESS | [TXT](./data-raw/corpus/at_the_mountains_of_madness) | [RDA](./data/at_the_mountains_of_madness.rda) |
| AZATHOTH | [TXT](./data-raw/corpus/azathoth) | [RDA](./data/azathoth.rda) |
| BEYOND THE WALL OF SLEEP | [TXT](./data-raw/corpus/beyond_the_wall_of_sleep) | [RDA](./data/beyond_the_wall_of_sleep.rda) |
| CELEPHAIS | [TXT](./data-raw/corpus/celephais) | [RDA](./data/celephais.rda) |
| COOL AIR | [TXT](./data-raw/corpus/cool_air) | [RDA](./data/cool_air.rda) |
| DAGON | [TXT](./data-raw/corpus/dagon) | [RDA](./data/dagon.rda) |
| DREAMS IN THE WITCH-HOUSE | [TXT](./data-raw/corpus/dreams_in_the_witch_house) | [RDA](./data/dreams_in_the_witch_house.rda) |
| EX OBLIVIONE | [TXT](./data-raw/corpus/ex_oblivione) | [RDA](./data/ex_oblivione.rda) |
| FACTS CONCERNING THE LATE ARTHUR JERMYN AND HIS FAMILY | [TXT](./data-raw/corpus/facts_concerning_the_late_arthur_jermyn_and_his_family) | [RDA](./data/facts_concerning_the_late_arthur_jermyn_and_his_family.rda) |
| FROM BEYOND | [TXT](./data-raw/corpus/from_beyond) | [RDA](./data/from_beyond.rda) |
| HE | [TXT](./data-raw/corpus/he) | [RDA](./data/he.rda) |
| HERBERT WEST: REANIMATOR | [TXT](./data-raw/corpus/herbert_west_reanimator) | [RDA](./data/herbert_west_reanimator.rda) |
| HYPNOS | [TXT](./data-raw/corpus/hypnos) | [RDA](./data/hypnos.rda) |
| IMPRISONED WITH THE PHARAOHS | [TXT](./data-raw/corpus/imprisoned_with_the_pharoahs) | [RDA](./data/imprisoned_with_the_pharoahs.rda) |
| IN THE VAULT | [TXT](./data-raw/corpus/in_the_vault) | [RDA](./data/in_the_vault.rda) |
| MEDUSA’S COIL | [TXT](./data-raw/corpus/medusas_coil) | [RDA](./data/medusas_coil.rda) |
| MEMORY | [TXT](./data-raw/corpus/memory) | [RDA](./data/memory.rda) |
| NYARLATHOTEP | [TXT](./data-raw/corpus/nyarlathotep) | [RDA](./data/nyarlathotep.rda) |
| PICKMAN’S MODEL | [TXT](./data-raw/corpus/pickmans_model) | [RDA](./data/pickmans_model.rda) |
| POETRY OF THE GODS | [TXT](./data-raw/corpus/poetry_of_the_gods) | [RDA](./data/poetry_of_the_gods.rda) |
| POLARIS | [TXT](./data-raw/corpus/polaris) | [RDA](./data/polaris.rda) |
| THE ALCHEMIST | [TXT](./data-raw/corpus/the_alchemist) | [RDA](./data/the_alchemist.rda) |
| THE BEAST IN THE CAVE | [TXT](./data-raw/corpus/the_beast_in_the_cave) | [RDA](./data/the_beast_in_the_cave.rda) |
| THE BOOK | [TXT](./data-raw/corpus/the_book) | [RDA](./data/the_book.rda) |
| THE CALL OF CTHULHU | [TXT](./data-raw/corpus/the_call_of_cthulhu) | [RDA](./data/the_call_of_cthulhu.rda) |
| THE CASE OF CHARLES DEXTER WARD | [TXT](./data-raw/corpus/the_case_of_charles_dexter_ward) | [RDA](./data/the_case_of_charles_dexter_ward.rda) |
| THE CATS OF ULTHAR | [TXT](./data-raw/corpus/the_cats_of_ulthar) | [RDA](./data/the_cats_of_ulthar.rda) |
| THE COLOUR OUT OF SPACE | [TXT](./data-raw/corpus/the_colour_out_of_space) | [RDA](./data/the_colour_out_of_space.rda) |
| THE CRAWLING CHAOS | [TXT](./data-raw/corpus/the_crawling_chaos) | [RDA](./data/the_crawling_chaos.rda) |
| THE DESCENDANT | [TXT](./data-raw/corpus/the_descendent) | [RDA](./data/the_descendent.rda) |
| THE DOOM THAT CAME TO SARNATH | [TXT](./data-raw/corpus/the_doom_that_came_to_sarnath) | [RDA](./data/the_doom_that_came_to_sarnath.rda) |
| THE DREAM QUEST OF UNKNOWN KADATH | [TXT](./data-raw/corpus/the_dream_quest_of_unknown_kadath) | [RDA](./data/the_dream_quest_of_unknown_kadath.rda) |
| THE DUNWICH HORROR | [TXT](./data-raw/corpus/the_dunwich_horror) | [RDA](./data/the_dunwich_horror.rda) |
| THE EVIL CLERGYMAN | [TXT](./data-raw/corpus/the_evil_clergyman) | [RDA](./data/the_evil_clergyman.rda) |
| THE FESTIVAL | [TXT](./data-raw/corpus/the_festival) | [RDA](./data/the_festival.rda) |
| THE HAUNTER OF THE DARK | [TXT](./data-raw/corpus/the_haunter_of_the_dark) | [RDA](./data/the_haunter_of_the_dark.rda) |
| THE HORROR AT MARTIN’S BEACH | [TXT](./data-raw/corpus/the_horror_at_martins_beach) | [RDA](./data/the_horror_at_martins_beach.rda) |
| THE HORROR AT RED HOOK | [TXT](./data-raw/corpus/the_horror_at_redhook) | [RDA](./data/the_horror_at_redhook.rda) |
| THE HOUND | [TXT](./data-raw/corpus/the_hound) | [RDA](./data/the_hound.rda) |
| THE LURKING FEAR | [TXT](./data-raw/corpus/the_lurking_fear) | [RDA](./data/the_lurking_fear.rda) |
| THE MOON BOG | [TXT](./data-raw/corpus/the_moon_bog) | [RDA](./data/the_moon_bog.rda) |
| THE MUSIC OF ERICH ZANN | [TXT](./data-raw/corpus/the_music_of_erich_zann) | [RDA](./data/the_music_of_erich_zann.rda) |
| THE NAMELESS CITY | [TXT](./data-raw/corpus/the_nameless_city) | [RDA](./data/the_nameless_city.rda) |
| THE OTHER GODS | [TXT](./data-raw/corpus/the_other_gods) | [RDA](./data/the_other_gods.rda) |
| THE OUTSIDER | [TXT](./data-raw/corpus/the_outsider) | [RDA](./data/the_outsider.rda) |
| THE PICTURE IN THE HOUSE | [TXT](./data-raw/corpus/the_picture_in_the_house) | [RDA](./data/the_picture_in_the_house.rda) |
| THE QUEST OF IRANON | [TXT](./data-raw/corpus/the_quest_of_iranon) | [RDA](./data/the_quest_of_iranon.rda) |
| THE RATS IN THE WALLS | [TXT](./data-raw/corpus/the_rats_in_the_walls) | [RDA](./data/the_rats_in_the_walls.rda) |
| THE SHADOW OUT OF TIME | [TXT](./data-raw/corpus/the_shadow_out_of_time) | [RDA](./data/the_shadow_out_of_time.rda) |
| THE SHADOW OVER INNSMOUTH | [TXT](./data-raw/corpus/the_shadow_over_innsmouth) | [RDA](./data/the_shadow_over_innsmouth.rda) |
| THE SHUNNED HOUSE | [TXT](./data-raw/corpus/the_shunned_house) | [RDA](./data/the_shunned_house.rda) |
| THE SILVER KEY | [TXT](./data-raw/corpus/the_silver_key) | [RDA](./data/the_silver_key.rda) |
| THE STATEMENT OF RANDOLPH CARTER | [TXT](./data-raw/corpus/the_statement_of_randolph_carter) | [RDA](./data/the_statement_of_randolph_carter.rda) |
| THE STRANGE HIGH HOUSE IN THE MIST | [TXT](./data-raw/corpus/the_strange_high_house_in_the_mist) | [RDA](./data/the_strange_high_house_in_the_mist.rda) |
| THE STREET | [TXT](./data-raw/corpus/the_street) | [RDA](./data/the_street.rda) |
| THE TEMPLE | [TXT](./data-raw/corpus/the_temple) | [RDA](./data/the_temple.rda) |
| THE TERRIBLE OLD MAN | [TXT](./data-raw/corpus/the_terrible_old_man) | [RDA](./data/the_terrible_old_man.rda) |
| THE THING ON THE DOORSTEP | [TXT](./data-raw/corpus/the_thing_on_the_doorstep) | [RDA](./data/the_thing_on_the_doorstep.rda) |
| THE TOMB | [TXT](./data-raw/corpus/the_tomb) | [RDA](./data/the_tomb.rda) |
| THE TRANSITION OF JUAN ROMERO | [TXT](./data-raw/corpus/the_transition_of_juan_romero) | [RDA](./data/the_transition_of_juan_romero.rda) |
| THE TREE | [TXT](./data-raw/corpus/the_tree) | [RDA](./data/the_tree.rda) |
| THE UNNAMABLE | [TXT](./data-raw/corpus/the_unnamable) | [RDA](./data/the_unnamable.rda) |
| THE VERY OLD FOLK | [TXT](./data-raw/corpus/the_very_old_folk) | [RDA](./data/the_very_old_folk.rda) |
| THE WHISPERER IN DARKNESS | [TXT](./data-raw/corpus/the_whisperer_in_darkness) | [RDA](./data/the_whisperer_in_darkness.rda) |
| THE WHITE SHIP | [TXT](./data-raw/corpus/the_white_ship) | [RDA](./data/the_white_ship.rda) |
| THROUGH THE GATES OF THE SILVER KEY | [TXT](./data-raw/corpus/through_the_gates_of_the_silver_key) | [RDA](./data/through_the_gates_of_the_silver_key.rda) |
| WHAT THE MOON BRINGS | [TXT](./data-raw/corpus/what_the_moon_brings) | [RDA](./data/what_the_moon_brings.rda) |
