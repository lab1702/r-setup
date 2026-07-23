# r-setup

A one-line bootstrap script for setting up a fresh R installation with a standard set of packages.

Running the script installs [pak](https://pak.r-lib.org/) if it isn't already available, then uses it to
install (or upgrade) the package list below. Because `pkg.sysreqs` is enabled, pak will also try to install
any required system dependencies on supported Linux distributions.

## Install Packages

From an R console:

```r
source("https://raw.githubusercontent.com/lab1702/r-setup/refs/heads/main/install_pkgs.R")
```

Or run it non-interactively from a shell:

```bash
Rscript -e 'source("https://raw.githubusercontent.com/lab1702/r-setup/refs/heads/main/install_pkgs.R")'
```

The script is safe to re-run — `pak()` is called with `upgrade = TRUE` and `ask = FALSE`, so repeated runs
simply bring everything up to date without prompting.

## What Gets Installed

| Area | Packages |
| --- | --- |
| Core data science | `tidyverse` |
| Package development | `devtools`, `roxygen2`, `testthat`, `rhub`, `spelling`, `cranlogs` |
| Git & GitHub | `gh`, `gitcreds` |
| Reporting & documents | `rmarkdown`, `quarto`, `flexdashboard`, `DT`, `thematic` |
| Shiny & web | `shinylive`, `tinyshinyserver`, `websocket` |
| Editor & kernel tooling | `languageserver`, `httpgd`, `IRkernel` |
| Visualization | `plotly`, `dygraphs`, `leaflet` |
| Data engineering | `arrow`, `duckdb` |
| Machine learning | `caret`, `randomForest`, `xgboost` |
| Time series & finance | `quantmod`, `tidyquant`, `PerformanceAnalytics`, `ichimoku`, `prophet`, `CausalImpact` |
| Performance & concurrency | `mirai`, `bench`, `microbenchmark` |
| Logging | `logger` |

## Customizing

Fork the repo and edit the `packages` vector in [`install_pkgs.R`](install_pkgs.R), then source your own copy:

```r
packages <- c(
  "tidyverse",
  "duckdb",
  "your-package-here"
)
```

## Requirements

- R 4.x (any recent version supported by pak)
- An internet connection
- On Linux, permission to install system packages if you want `pkg.sysreqs = TRUE` to do its job

## Notes

- `IRkernel` is installed but not registered with Jupyter. To register it, run:

  ```r
  IRkernel::installspec()
  ```

- `quarto` (the R package) requires the [Quarto CLI](https://quarto.org/docs/get-started/) to be installed separately.

## License

[MIT](LICENSE)
