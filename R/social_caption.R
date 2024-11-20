social_caption <- function(mastodon = "fosstodon.org/@nrennie",
                           linkedin = "nicola-rennie",
                           bluesky = "nrennie",
                           github = "nrennie",
                           icon_color = "black",
                           font_color = "black",
                           bg_color = "white",
                           font_family = "Commissioner") {
  icons <- list(
    mastodon = "&#xf4f6",
    linkedin = "&#xf08c",
    bluesky = "&#xe671",
    github = "&#xf09b"
  )
  social <- list(
    mastodon = mastodon,
    linkedin = linkedin,
    bluesky = bluesky,
    github = github
  )
  social <- social[!is.na(social)]
  caption <- ""
  for (name in names(social)) {
    icon <- icons[name]
    info <- social[name]
    html <- glue::glue("<span style='font-family:\"Font Awesome 6 Brands\";color:{icon_color};'>{icon};</span><span style='color:{bg_color};'>.</span><span style='font-family:{font_family};color:{font_color};'>{info}</span><span style='color:{bg_color};'>..</span>")
    caption <- paste0(caption, html)
  }
  return(caption)
}