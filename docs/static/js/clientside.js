const delays = [100, 100, 300, 500, 1000, 2000];

function scrollWithRetry(id, idx) {
  const targetElement = document.getElementById(id);
  if (targetElement) {
    targetElement.scrollIntoView();
  } else if (idx < delays.length) {
    setTimeout(() => scrollWithRetry(id, idx + 1), delays[idx]);
  }
}

if (!window.dash_clientside) {
  window.dash_clientside = {};
}
window.dash_clientside.clientside = {
  scrollAfterLoad: function(hash) {
    if (hash) {
      scrollWithRetry(hash.slice(1), 0);
    }
    return window.dash_clientside.no_update;
  }
};
