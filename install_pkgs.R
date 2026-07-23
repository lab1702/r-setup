
if (!requireNamespace("pak", quietly = TRUE)) {
  install.packages("pak")
}

library(pak)

options(pkg.sysreqs = TRUE)

packages <- c(
  "tidyverse",
  "shinylive",
  "devtools",
  "gh",
  "gitcreds",
  "cranlogs",
  "rhub",
  "spelling",
  "testthat",
  "roxygen2",
  "logger",
  "rmarkdown",
  "flexdashboard",
  "DT",
  "websocket",
  "quarto",
  "thematic",
  "IRkernel",
  "languageserver",
  "httpgd",
  "microbenchmark",
  "quantmod",
  "PerformanceAnalytics",
  "tidyquant",
  "ichimoku",
  "prophet",
  "CausalImpact",
  "caret",
  "randomForest",
  "xgboost",
  "arrow",
  "duckdb",
  "plotly",
  "dygraphs",
  "leaflet",
  "mirai",
  "bench",
  "tinyshinyserver"
)

pak(pkg = packages, upgrade = TRUE, ask = FALSE)
