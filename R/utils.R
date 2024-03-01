
# Set styling for book ----------------------------------------------------

transformers <- styler::tidyverse_style()
transformers$line_break$set_line_break_before_closing_call <- NULL
options(
  styler.addins_style_transformer = transformers
)
styler::style_dir(".", transformers = transformer)


# camcorder recording -----------------------------------------------------

library(camcorder)
gg_record(
  dir = file.path("recording"),
  device = "png",
  width = 5,
  height = 3.35,
  units = "in",
  dpi = 300
)
