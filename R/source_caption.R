source_caption <- function(source, graphic, sep = " | ") {
  caption <- glue(
    "**Data**: {source}{sep}**Graphic**: {graphic}"
  )
  return(caption)
}
