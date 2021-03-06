###
# + Custom Task Definitions
# https://github.com/firstandthird/load-grunt-config
# ==================================================================
###

module.exports =

    # default task
    default:[
        'prebuild'
        'build'
    ]

    # copy dependencies from bower
    copydeps: [
        'clean:deps'
        'copy:jquery'
        'copy:highlightjs'
        'copy:normalizecss'
    ]

    # build javascripts
    buildjs: [
        'coffeelint:all'
        'coffee:all'
        'jshint:all'
        'uglify:main'
    ]

    # build stylesheets
    buildcss: [
        'stylus:main'
        'autoprefixer:main'
        'css_mqpacker:main'
        'csswring:main'
    ]

    # pre-build
    prebuild: [
        'copydeps'
        'update_json:bower'
    ]

    # build
    build: [
        'buildcss'
        'buildjs'
    ]

# = Custom Task Definitions
