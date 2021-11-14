library(dashBootstrapComponents)

dropdown <- div(
  list(
    dbcLabel("Dropdown", html_for = "dropdown"),
    dccDropdown(
      id = "dropdown",
      options = list(
        list(label = "Option 1", value = 1),
        list(label = "Option 2", value = 2)
      )
    )
  ),
  className = "mb-3"
)

slider <- div(
  list(
    dbcLabel("Slider", html_for = "slider"),
    dccSlider(id = "slider", min = 0, max = 10, step = 0.5, value = 3)
  ),
  className = "mb-3"
)

range_slider <- div(
  list(
    dbcLabel("RangeSlider", html_for = "range-slider"),
    dccRangeSlider(id = "range-slider", min = 0, max = 10, value = list(3, 7))
  ),
  className = "mb-3"
)

form <- dbcForm(list(dropdown, slider, range_slider))
