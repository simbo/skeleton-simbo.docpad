###
# + Task Config: Uglify
# https://github.com/gruntjs/grunt-contrib-uglify
# =====================================================================
###

module.exports =

    # overall options
    options:
        sourceMap:          true
        preserveComments:   false

    # main scripts
    main:
        files:
            # dest : [ src, src, ... ]
            '<%= globalConfig.assets %>/js/main.min.js': [
                '<%= globalConfig.assets %>/js/main.js'
            ]


# = Task Config: Uglify
