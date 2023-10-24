const getStoredTheme = () => localStorage.getItem('theme')
const lightIcon = "bi bi-sun-fill"
const darkIcon = "bi bi-moon-fill"


const setIcon = theme => {
  icon = theme == "light" ? lightIcon : darkIcon
  document.getElementById('theme-icon').className = icon
}

const handleThemeChange = () => {
  getStoredTheme() == 'dark' ? setTheme("light") : setTheme("dark")
}

const setTheme = theme => {
  document.documentElement.setAttribute('data-bs-theme', theme)
  localStorage.setItem('theme', theme)
  setIcon(theme)
}

// icon needs to be set after page is loaded
const setInitialIcon = () => {
  getStoredTheme() == 'dark' ? setIcon("dark") : setIcon("light")
}
window.onload = (event) => {
  // example pages should always be light theme
  if (window.location.pathname.includes("/examples") ) {
    return document.documentElement.setAttribute('data-bs-theme', "light")
  }
  setInitialIcon()

};



