var migrationAlertContainer = document.getElementById(
  'migration-guide-alert-container'
);

if (!window.localStorage.getItem('dbc-migration-alert-seen')) {
  migrationAlertContainer.setAttribute('style', 'display:block');
}

var migrationAlert = document.getElementById('migration-guide-alert');
migrationAlert.addEventListener('closed.bs.alert', function() {
  window.localStorage.setItem('dbc-migration-alert-seen', 'true');
  migrationAlertContainer.setAttribute('style', 'display:none');
});
