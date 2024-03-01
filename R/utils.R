
# Set styling for book ----------------------------------------------------

transformers <- styler::tidyverse_style()
transformers$line_break$set_line_break_before_closing_call <- NULL
options(
  styler.addins_style_transformer = transformers
)
styler::style_dir(".", transformers = transformer)