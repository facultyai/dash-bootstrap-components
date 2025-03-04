var migrationAlertContainer = document.getElementById('v2-alert-container');

if (!window.localStorage.getItem('dbc-v2-alert-seen')) {
  migrationAlertContainer.setAttribute('style', 'display:block');
}

var migrationAlert = document.getElementById('v2-alert');
migrationAlert.addEventListener('closed.bs.alert', function () {
  window.localStorage.setItem('dbc-v2-alert-seen', 'true');
  migrationAlertContainer.setAttribute('style', 'display:none');
});
