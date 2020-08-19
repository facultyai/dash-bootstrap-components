.prependBootswatch <- function(suffix) {
  BOOTSWATCH_BASE <- "https://stackpath.bootstrapcdn.com/bootswatch/4.5.0/"
  return(paste(BOOTSWATCH_BASE, suffix, sep=""))
}

#' @export'
dbcThemes <- list(
  BOOTSTRAP = "https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css",
  GRID = "https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap-grid.min.css",
  CERULEAN = .prependBootswatch("cerulean/bootstrap.min.css"),
  COSMO = .prependBootswatch("cosmo/bootstrap.min.css"),
  CYBORG = .prependBootswatch("cyborg/bootstrap.min.css"),
  DARKLY = .prependBootswatch("darkly/bootstrap.min.css"),
  FLATLY = .prependBootswatch("flatly/bootstrap.min.css"),
  JOURNAL = .prependBootswatch("journal/bootstrap.min.css"),
  LITERA = .prependBootswatch("litera/bootstrap.min.css"),
  LUMEN = .prependBootswatch("lumen/bootstrap.min.css"),
  LUX = .prependBootswatch("lux/bootstrap.min.css"),
  MATERIA = .prependBootswatch("materia/bootstrap.min.css"),
  MINTY = .prependBootswatch("minty/bootstrap.min.css"),
  PULSE = .prependBootswatch("pulse/bootstrap.min.css"),
  SANDSTONE = .prependBootswatch("sandstone/bootstrap.min.css"),
  SIMPLEX = .prependBootswatch("simplex/bootstrap.min.css"),
  SKETCHY = .prependBootswatch("sketchy/bootstrap.min.css"),
  SLATE = .prependBootswatch("slate/bootstrap.min.css"),
  SOLAR = .prependBootswatch("solar/bootstrap.min.css"),
  SPACELAB = .prependBootswatch("spacelab/bootstrap.min.css"),
  SUPERHERO = .prependBootswatch("superhero/bootstrap.min.css"),
  UNITED = .prependBootswatch("united/bootstrap.min.css"),
  YETI = .prependBootswatch("yeti/bootstrap.min.css")
)
