var bootstrap =
  'https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css';
var bootswatchBase = 'https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/';
var bootswatchSfx = '/bootstrap.min.css';

var validBootswatch = new Set([
  'cerulean',
  'cosmo',
  'cyborg',
  'darkly',
  'flatly',
  'journal',
  'litera',
  'lumen',
  'lux',
  'materia',
  'minty',
  'pulse',
  'sandstone',
  'simplex',
  'sketchy',
  'slate',
  'solar',
  'spacelab',
  'superhero',
  'united',
  'yeti'
]);

function swapStyleSheet(sheetname) {
  if (sheetname === 'bootstrap') {
    document.getElementById('stylesheet').setAttribute('href', bootstrap);
  } else if (validBootswatch.has(sheetname)) {
    document
      .getElementById('stylesheet')
      .setAttribute('href', bootswatchBase + sheetname + bootswatchSfx);
  }
}

function updateSourceCode(sheetname) {
  var container = document.getElementById('code-container');
  for (var j = 0; j < container.childNodes.length; j++) {
    var node = container.childNodes[j];
    if (node.nodeType === 3) {
      var text = node.nodeValue;
      var replacedText = text.replace(
        /dbc.themes.[A-Z]+/gi,
        'dbc.themes.' + sheetname.toUpperCase()
      );
      if (replacedText !== text) {
        container.replaceChild(document.createTextNode(replacedText), node);
        break;
      }
    }
  }
}

function handleChange(e) {
  if (e.target.value) {
    var sheetname = e.target.value;
    swapStyleSheet(sheetname);
    updateSourceCode(sheetname);
  }
}

document.getElementById('theme-switcher').onchange = handleChange;
