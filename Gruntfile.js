module.exports = function(grunt) {
  grunt.loadNpmTasks("grunt-contrib-clean");
  grunt.loadNpmTasks("grunt-contrib-concat");
  grunt.loadNpmTasks("grunt-contrib-copy");
  grunt.loadNpmTasks("grunt-sass");

  grunt.initConfig({
    pkg: grunt.file.readJSON("package.json"),
    builddir: "css",
    buildtheme: "bootstrap",
    banner:
      "/*!\n" +
      " * Dash Bootstrap CSS v<%= pkg.version %>\n" +
      ' * Copyright 2019-<%= grunt.template.today("yyyy") %> <%= pkg.author %>\n' +
      " * Licensed under <%= pkg.license %>\n" +
      " * Based on Bootstrap and Bootswatch\n" +
      "*/\n",
    swatch: {
      bootstrap: {},
      cerulean: {},
      cosmo: {},
      cyborg: {},
      darkly: {},
      flatly: {},
      journal: {},
      litera: {},
      lumen: {},
      lux: {},
      materia: {},
      minty: {},
      pulse: {},
      sandstone: {},
      simplex: {},
      sketchy: {},
      slate: {},
      solar: {},
      spacelab: {},
      superhero: {},
      united: {},
      yeti: {}
    },
    clean: {
      build: {
        src: ["css/*/*.scss"]
      }
    },
    concat: {
      options: {
        banner: "<%= banner %>",
        stripBanners: false
      },
      dist: {
        src: [],
        dest: ""
      }
    },
    copy: {
      main: {
        expand: true,
        cwd: "scss",
        src: "components/*",
        dest: "css/"
      },
      swatch: {
        expand: true,
        cwd: "node_modules/bootswatch/dist/<%=buildtheme%>/",
        src: "*.scss",
        dest: "css/<%=buildtheme%>"
      }
    },
    sass: {
      options: {
        implementation: require("node-sass"),
        sourceMap: false
      }
    }
  });

  grunt.registerTask("default", function() {});

  grunt.registerTask("build", "build themes from scss", function(theme) {
    var t = theme;
    if (!t) {
      for (t in grunt.config("swatch")) {
        grunt.task.run(["copy", "build-theme:" + t]);
      }
      grunt.task.run(["clean:build"]);
    } else {
      grunt.task.run(["copy", "build-theme:" + t, "clean:build"]);
    }
  });

  grunt.registerTask("build-theme", "build a regular theme from scss", function(
    theme,
    compress
  ) {
    theme = theme === undefined ? grunt.config("buildtheme") : theme;
    grunt.config("buildtheme", theme);
    compress = compress === undefined ? true : compress;

    var isValidTheme =
      theme === "bootstrap" ||
      (grunt.file.exists(
        "node_modules/bootswatch/dist/" + theme,
        "_variables.scss"
      ) &&
        grunt.file.exists(
          "node_modules/bootswatch/dist/" + theme,
          "_bootswatch.scss"
        ));

    // cancel the build (without failing) if this directory is not a valid theme
    if (!isValidTheme) {
      return;
    }

    if (theme !== "bootstrap") {
      grunt.task.run(["copy:swatch"])
    }

    var concatSrc;
    var concatDest;
    var scssDest;
    var scssSrc;
    var files = {};
    var dist = {};
    concatSrc =
      "scss/build/" +
      (theme === "bootstrap" ? "bootstrap" : "bootswatch") +
      ".scss";
    concatDest = "<%=builddir%>/" + theme + "/build.scss";
    scssSrc = "<%=builddir%>/" + theme + "/build.scss";
    scssDest = "<%=builddir%>/" + theme + "/bootstrap.css";

    dist = { src: concatSrc, dest: concatDest };
    grunt.config("concat.dist", dist);
    files = {};
    files[scssDest] = scssSrc;
    grunt.config("sass.dist.files", files);
    grunt.config("sass.dist.options.outputStyle", "expanded");

    grunt.task.run([
      "concat",
      "sass:dist",
      compress
        ? "compress:" +
          scssDest +
          ":" +
          "<%=builddir%>/" +
          theme +
          "/bootstrap.min.css"
        : "none"
    ]);
  });

  grunt.registerTask("compress", "compress a generic css with sass", function(
    fileSrc,
    fileDst
  ) {
    var files = {};
    files[fileDst] = fileSrc;
    grunt.log.writeln("compressing file " + fileSrc);

    grunt.config("sass.dist.files", files);
    grunt.config("sass.dist.options.outputStyle", "compressed");
    grunt.task.run(["sass:dist"]);
  });
};
