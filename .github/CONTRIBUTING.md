# How to Contribute
Contributions, issues, and fixes are welcome!

> If making changes to data, this must be done to the [raw txt files](/data-raw/corpus/). The [`generate_data.R`](/data-raw/generate_data.R) script automates creating the RDA files and accompanying documentation.

1. [Fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo) and [clone](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository) the repo

1. Install the [`pre-commit` hooks](https://pre-commit.com/#install)

1. Create a new branch

    ```bash
    git checkout -b my-branch
    ```

1. Make your changes

    * Run the [`generate_data.R`](/data-raw/generate_data.R) script if you made changes to the raw txt files or data documentation
    * Render [`README.md`](/README.md) from [`README.qmd`](/README.md) if you made changes to the `README`

1. Ensure all {[`testthat`](https://testthat.r-lib.org/)} tests pass

    ```R
    devtools::test()
    ```

1. Submit a PR
