
# Source needed files -----------------------------------------------------

source("R/social_caption.R")
source("R/source_caption.R")
source("R/load_font_awesome.R")


# camcorder recording -----------------------------------------------------

library(camcorder)
gg_record(
  dir = file.path("recording"),
  device = "png",
  width = 5,
  height = 0.5*5,
  units = "in",
  dpi = 300
)

# remove folder
unlink("recording", recursive = TRUE)


# Packages required for book ----------------------------------------------

library(xml2)
library(downlit)
library(lintr)
library(styler)
library(maps)
library(ragg)
library(tidytuesdayR)


# Get quarto dependencies -------------------------------------------------

get_chapter_deps <- function(file) {
  deps <- attachment::att_from_qmd(file) |> 
    sort() |> 
    stringr::str_flatten(', ') |> 
    stringr::str_replace_all(", ", "', '") 
  deps <- paste0("c('", deps, "')")
  return(deps)
}
