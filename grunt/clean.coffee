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
                '<%= globalConfig.rawAssetsDev %>/coffee/vendor/**/*'
                '<%= globalConfig.rawAssetsDev %>/stylus/imports/vendor/**/*'
            ]

    # generated js
    js:     [
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

    # cleanup generated content
    out_cleanup: [
                '<%= globalConfig.out %>/_posts'
            ]

    # assets-dev styles in /out
    out_assetsdev_styles: [
                '<%= globalConfig.assetsDev %>/stylus'
            ]

    # assets-dev scripts in /out
    out_assetsdev_scripts: [
                '<%= globalConfig.assetsDev %>/coffee'
            ]

# = Task Config: Clean
