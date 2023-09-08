# Version Control Survey

## Requirements

This repo uses [`renv`](https://rstudio.github.io/renv/articles/renv.html) for dependency management.

If you haven't used `renv` before, install it using:

```R
install.packages("renv")
```

If you open the R project `version-control-survey.Rproj` in RStudio (recommended), `renv` should be automatically activated.
This should look like this:

```R
# Bootstrapping renv 1.0.2 ---------------------------------------------------
- Downloading renv ... OK
- Installing renv  ... OK

- Project '~/Desktop/version-control-survey' loaded. [renv 1.0.2]
```

If this does not happen, try to activate `renv` using:

```R
renv::activate()
```

Finally, after `renv` is activated, restore the computational environment using:

```R
renv::restore()
```

## Usage

- "Yes" and "No" statements need to be wrapped into quotation marks

## Contributors

- [Lennart Wittkuhn](mailto:lennart.wittkuhn@uni-hamburg.de)
- Konrad Pagenstedt
