function handleChange(e) {
  if (e.target.value) {
    document
      .getElementById('explorer-iframe')
      .setAttribute('src', '/docs/themes/explorer/' + e.target.value);
  }
}

document.getElementById('theme-switcher').onchange = handleChange;
