###
# + Task Config: Clean
# https://github.com/gruntjs/grunt-contrib-clean
# =====================================================================
###

module.exports =

    # auto-installed dependencies / vendor folders
    deps:   [
                '<%= globalConfig.rawAssets %>/js/vendor/**/*'
                '<%= globalConfig.rawAssets %>/css/vendor/**/*'
            ]

    # generated js
    js:    [
                '<%= globalConfig.assets %>/js/**/*.js'
                '<%= globalConfig.assets %>/js/**/*.map'
                '!<%= globalConfig.assets %>/js/vendor/**/*'
            ]

    # generated css
    css:    [
                '<%= globalConfig.assets %>/css/**/*.css'
                '<%= globalConfig.assets %>/css/**/*.map'
                '!<%= globalConfig.assets %>/css/vendor/**/*'
            ]

    # docpad generated content
    out:    [
                '<%= globalConfig.out %>'
            ]

# = Task Config: Clean
