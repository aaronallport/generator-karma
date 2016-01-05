# Karma configuration
# http://karma-runner.github.io/0.12/config/configuration-file.html
# Generated on <%= (new Date).toISOString().split('T')[0] %> using
# <%= pkg.name %> <%= pkg.version %>

module.exports = (config) ->
  config.set
    # base path, that will be used to resolve files and exclude
    basePath: '<%= basePath %>'

    # testing framework to use (jasmine/mocha/qunit/...)
    # as well as any additional frameworks (requirejs/chai/sinon/...)
    # requirejs added automatically
    frameworks: [<%= templateArray(frameworks) %>]

    # list of files / patterns to load in the browser
    files: [
        <%= templateArray(configFiles, fileComments, true) %>,
        // http://karma-runner.github.io/0.10/plus/requirejs.html
        '<%= testPath %>/test-main.js'
    ],

    # list of files / patterns to exclude
    exclude: [<%= templateArray(exclude, true) %>]

    # web server port
    port: <%= port %>

    # level of logging
    # possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_INFO

    # Start these browsers, currently available:
    # - Chrome
    # - ChromeCanary
    # - Firefox
    # - Opera
    # - Safari (only Mac)
    # - PhantomJS
    # - IE (only Windows)
    browsers: [<%= templateArray(browsers, true) %>]

    # Which plugins to enable
    plugins: [<%= templateArray(plugins, true) %>]

    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true

    # Continuous Integration mode
    # if true, it capture browsers, run tests and exit
    singleRun: false

    colors: true

    preprocessors: '**/*.coffee': ['coffee']

    # Uncomment the following lines if you are using grunt's server to run the tests
    # proxies: '/': 'http://localhost:9000/'
    # URL root prevent conflicts with the site root
    # urlRoot: '_karma_'
