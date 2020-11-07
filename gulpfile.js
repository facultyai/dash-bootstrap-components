const {dest, parallel, series, src} = require('gulp');
const del = require('del');
const mkdirp = require('mkdirp');
const rename = require('gulp-rename');
const footer = require('gulp-footer');
var replace = require('gulp-replace');

function cleanLib() {
  mkdirp.sync('lib');
  return del(['lib/*']);
}

function cleanDist() {
  mkdirp.sync('dist');
  return del(['dist/*']);
}

function copyDist() {
  return src(
    'dash_bootstrap_components/_components/dash_bootstrap_components.min.js'
  ).pipe(dest('dist/'));
}

function cleanComponents() {
  return del(['dash_bootstrap_components/_components/*']);
}

function cleanGeneratedFiles() {
  return del([
    'dash_bootstrap_components/*.(py|json)',
    '!dash_bootstrap_components/(__init__|_table|_version|themes).py'
  ]);
}

function copyGeneratedFiles() {
  return src('dash_bootstrap_components/*', {
    ignore: ['__init__.py', '_table.py', '_version.py', 'themes.py'].map(
      function prepend(stub) {
        return 'dash_bootstrap_components/' + stub;
      }
    )
  })
    .pipe(
      rename(function(path) {
        if (path.basename === '_imports_') {
          return {
            basename: '__init__',
            extname: path.extname,
            dirname: path.dirname
          };
        }
        return path;
      })
    )
    .pipe(dest('dash_bootstrap_components/_components'));
}

function addThemesToRNamespace() {
  return src('NAMESPACE')
    .pipe(footer('export(dbcThemes)'))
    .pipe(dest('.', {overwrite: true}));
}

function moveJlThemesToSrc() {
  return src('jl/themes.jl').pipe(dest('src'));
}

function addThemesToJlNamespace() {
  // modify generated DashBootstrapComponents.jl file to include themes.jl
  let anchor = 'include("dbc_tabs.jl")';
  return src('src/DashBootstrapComponents.jl')
    .pipe(replace(anchor, anchor + '\ninclude("themes.jl")\n'))
    .pipe(dest('src'));
}

exports.postPyBuild = series(copyDist, copyGeneratedFiles, cleanGeneratedFiles);
exports.clean = parallel(
  cleanGeneratedFiles,
  cleanComponents,
  cleanLib,
  cleanDist
);
exports.postRBuild = series(
  copyDist,
  copyGeneratedFiles,
  cleanGeneratedFiles,
  addThemesToRNamespace
);
exports.postJlBuild = series(
  copyDist,
  copyGeneratedFiles,
  cleanGeneratedFiles,
  moveJlThemesToSrc,
  addThemesToJlNamespace
);
