var v1AlertContainer = document.getElementById('dbc-v1-alert-container');

if (!window.localStorage.getItem('dbc-v1-alert-seen')) {
  v1AlertContainer.setAttribute('style', 'display:block');
}

$('#dbc-v1-alert').on('closed.bs.alert', function() {
  console.log('triggered');
  window.localStorage.setItem('dbc-v1-alert-seen', 'true');
  v1AlertContainer.setAttribute('style', 'display:none');
});
