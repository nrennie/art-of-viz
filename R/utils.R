
# camcorder recording -----------------------------------------------------

library(camcorder)
gg_record(
  dir = file.path("recording"),
  device = "png",
  width = 5,
  height = 4.6,
  units = "in",
  dpi = 300
)

# remove folder
unlink("recording", recursive = TRUE)


# Packages required for book ----------------------------------------------

library(xml2)
library(downlit)
library(lintr)
