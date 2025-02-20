## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(knitr)
latex <- kable(mtcars[1:2, 1:2], format = "latex")
cat(latex)

## -----------------------------------------------------------------------------
library(parseLatex)
parsed <- parseLatex(latex)

## -----------------------------------------------------------------------------
parsed[[1]]
parsed[[2]]

## -----------------------------------------------------------------------------
find_env(parsed, "tabular")

## -----------------------------------------------------------------------------
table <- parsed[[find_env(parsed, "tabular")]]
# Get the alignment options from the content
columnOptions(table)
tableCell(table, 2,2) # The title counts as a row
tableCell(table, 1,1) <- "Model"
table

## ----echo = FALSE-------------------------------------------------------------
tags <- data.frame(Tag = c("BLOCK", "COMMENT", "DISPLAYMATH", "ENVIRONMENT", "MACRO", "MATH", "SPECIAL", "TEXT", "VERB", "DEFINITION", "ERROR"),
        Description = c(
          "A block enclosed in curly braces",
          "A LaTeX comment",
          "A display math block",
          "A LaTeX environment",
          "A LaTeX macro",
          "An inline math block",
          "A non-alphabetic character",
          "Text (consisting of letters only)",
          "A verbatim environment",
          "A command or environment definition",
          "A block of items referenced in an error message"),
        Type = c("list", "character", "list", "list", "character",
                 "list", "character", "character", "character", "list", "list"))
knitr::kable(tags, booktabs = TRUE)

