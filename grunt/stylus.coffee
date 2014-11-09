###
# + Task Config: Stylus
# https://github.com/gruntjs/grunt-contrib-stylus
# =====================================================================
###

module.exports =

    # overall options
    options:
        compress:       false
        paths:          [
                            '<%= globalConfig.assetsDev %>/stylus/imports/'
                        ]
        sourcemap:
            basePath:   '<%= globalConfig.assets %>/css'

    # main styles
    main:
        src:            '<%= globalConfig.assetsDev %>/stylus/main.styl'
        dest:           '<%= globalConfig.assets %>/css/main.css'

# = Task Config: Stylus
