exports.config = {
  // See http://brunch.io/#documentation for docs.
  files: {
    javascripts: {
      joinTo: {
        "js/app.js": [
          /^(web\/static\/vendor\/semantic\/dist)/,
          /^(web\/static\/js)/
        ]
      }
    },
    stylesheets: {
      joinTo: {
        "css/app.css": [
          /^(web\/static\/vendor\/semantic\/dist)/,
          /^(web\/static\/css)/
        ]
      },
      order: {
        after: ["web/static/css/app.css"] // concat app.css last
      }
    },
    templates: {
      joinTo: "js/app.js"
    }
  },

  conventions: {
    // This option sets where we should place non-css and non-js assets in.
    // By default, we set this to "/web/static/assets". Files in this directory
    // will be copied to `paths.public`, which is "priv/static" by default.
    assets: [
      /^(web\/static\/assets)/,
      /^(web\/static\/vendor\/semantic\/dist\/assets)/
    ],

    ignored: [
      /^(web\/static\/vendor\/semantic\/tasks)/,
      /^(web\/static\/vendor\/semantic\/src)/
    ]
  },

  // Phoenix paths configuration
  paths: {
    // Dependencies and current project directories to watch
    watched: ["web/static", "test/static"],

    // Where to compile files to
    public: "priv/static"
  },

  // Configure your plugins
  plugins: {
    babel: {
      // Do not use ES6 compiler in vendor code
      ignore: [/web\/static\/vendor/]
    }
  },

  modules: {
    autoRequire: {
      "js/app.js": ["web/static/js/app"]
    }
  },

  npm: {
    enabled: true
  }
};
