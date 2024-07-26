# How to Contribute
Pull requests and issues are welcome! File an issue before opening a pull request so we can discuss.

## Repository Structure
[`data-raw/corpus`](../data-raw/corpus/) contains the raw text of the works. Any change to or addition/removal of datasets must be done in this directory.

The [`generate_data.R`](../data-raw/generate_data.R) script automates creating the datasets and their [accompanying documentation](../R/data.R) from the [raw text files](../data-raw/corpus/).

Thus the process for most changes will require updating the raw data or the [`generate_data.R` script](../data-raw/generate_data.R) then running [`generate_data.R`](../data-raw/generate_data.R) to generate changes to the datasets or docs.

## Issues
Issues should provide details on bugs, dataset errors, or feature requests. Ensure there isn't already an open issue or pull request on your issue before opening.

## Pull Requests
1. [File an issue](https://docs.github.com/en/issues/tracking-your-work-with-issues/creating-an-issue) and wait for a reply before starting any work

1. [Fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) and [clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) the repo

1. Install the [`pre-commit` hooks](https://pre-commit.com/#install)

1. Create a new branch

    ```bash
    git checkout -b my-branch
    ```

1. Make your changes

    * Run the [`generate_data.R`](../data-raw/generate_data.R) script if you made changes to the raw text files or data documentation
    * Render [`README.md`](../README.md) from [`README.qmd`](../README.md) if you made changes to the `README`

1. Ensure [R-CMD-check](https://devtools.r-lib.org/reference/check.html) passes

    ```R
    devtools::check()
    ```

1. Run the [`build_github_site.R` script](../data-raw/build_github_site.R) to preview the {`pkgdown`} site

1. Submit a PR
