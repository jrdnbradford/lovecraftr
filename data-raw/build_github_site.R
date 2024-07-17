#!/usr/bin/env Rscript

source("data-raw/generate_data.R")
pkgdown::build_site_github_pages()
pkgdown::preview_site()
