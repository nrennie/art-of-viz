source_caption <- function(source, graphic, sep = "<br>") {
  caption <- glue::glue(
    "**Data**: {source}{sep}**Graphic**: {graphic}"
  )
  return(caption)
}
