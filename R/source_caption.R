source_caption <- function(source, graphic) {
  caption <- glue::glue(
    "**Data**: {source}<br>**Graphic**: {graphic}"
  )
  return(caption)
}
