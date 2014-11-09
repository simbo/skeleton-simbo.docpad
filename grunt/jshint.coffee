###
# + Task Config: JSHint
# https://github.com/gruntjs/grunt-contrib-jshint
# =====================================================================
###

module.exports =

    # overall options
    options:
        indent:         4

    # all scripts
    all:
        src:            [
                            '<%= globalConfig.assets %>/js/**/*.js'
                            '!<%= globalConfig.assets %>/js/**/*.min.js'
                            '!<%= globalConfig.assets %>/js/vendor/**/*.js'
                        ]

# = Task Config: JSHint
