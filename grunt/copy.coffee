###
# + Task Config: Copy
# https://github.com/gruntjs/grunt-contrib-copy
# =====================================================================
###

module.exports =

    # local jquery alternative
    jquery:
        expand:     true
        src:        '<%= globalConfig.bower %>/jquery/dist/*'
        dest:       '<%= globalConfig.rawAssets %>/js/vendor/jquery/'
        flatten:    true

    # normalize.css styles
    normalizecss:
        expand:     true
        cwd:        '<%= globalConfig.bower %>/normalize.css/'
        src:        [ 'normalize.css' ]
        dest:       '<%= globalConfig.rawAssetsDev %>/stylus/imports/vendor/normalize/'
        rename:     (dest, src) ->
                        dest + src.replace( /\.css$/, ".styl" )


# = Task Config: Copy dependency files
