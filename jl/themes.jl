export prepend_bootswatch, dbc_themes

function prepend_bootswatch(suffix)
  BOOTSWATCH_BASE = "https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/"
  return string(BOOTSWATCH_BASE, suffix)
end

dbc_themes = (
  BOOTSTRAP = "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css",
  GRID = "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap-grid.min.css",
  CERULEAN = prepend_bootswatch("cerulean/bootstrap.min.css"),
  COSMO = prepend_bootswatch("cosmo/bootstrap.min.css"),
  CYBORG = prepend_bootswatch("cyborg/bootstrap.min.css"),
  DARKLY = prepend_bootswatch("darkly/bootstrap.min.css"),
  FLATLY = prepend_bootswatch("flatly/bootstrap.min.css"),
  JOURNAL = prepend_bootswatch("journal/bootstrap.min.css"),
  LITERA = prepend_bootswatch("litera/bootstrap.min.css"),
  LUMEN = prepend_bootswatch("lumen/bootstrap.min.css"),
  LUX = prepend_bootswatch("lux/bootstrap.min.css"),
  MATERIA = prepend_bootswatch("materia/bootstrap.min.css"),
  MINTY = prepend_bootswatch("minty/bootstrap.min.css"),
  PULSE = prepend_bootswatch("pulse/bootstrap.min.css"),
  SANDSTONE = prepend_bootswatch("sandstone/bootstrap.min.css"),
  SIMPLEX = prepend_bootswatch("simplex/bootstrap.min.css"),
  SKETCHY = prepend_bootswatch("sketchy/bootstrap.min.css"),
  SLATE = prepend_bootswatch("slate/bootstrap.min.css"),
  SOLAR = prepend_bootswatch("solar/bootstrap.min.css"),
  SPACELAB = prepend_bootswatch("spacelab/bootstrap.min.css"),
  SUPERHERO = prepend_bootswatch("superhero/bootstrap.min.css"),
  UNITED = prepend_bootswatch("united/bootstrap.min.css"),
  YETI = prepend_bootswatch("yeti/bootstrap.min.css")
)
