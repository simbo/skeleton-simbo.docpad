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

    # highlight.js styles
    highlightjs:
        expand:     true
        cwd:        '<%= globalConfig.bower %>/highlightjs/styles/'
        src:        [ 'github.css' ]
        dest:       '<%= globalConfig.rawAssetsDev %>/stylus/imports/vendor/highlightjs/'
        rename:     (dest, src) ->
                        dest + src.replace( /\.css$/, ".styl" )

    # normalize.css styles
    normalizecss:
        expand:     true
        cwd:        '<%= globalConfig.bower %>/normalize.css/'
        src:        [ 'normalize.css' ]
        dest:       '<%= globalConfig.rawAssetsDev %>/stylus/imports/vendor/normalize/'
        rename:     (dest, src) ->
                        dest + src.replace( /\.css$/, ".styl" )

    # assets-dev styles from src to out
    assetsdev_styles_src_out:
        expand:     true
        src:        '<%= globalConfig.rawAssetsDev %>/stylus'
        dest:       '<%= globalConfig.assetsDev %>/stylus'

    # assets-dev scripts from src to out
    assetsdev_scripts_src_out:
        expand:     true
        src:        '<%= globalConfig.rawAssetsDev %>/coffee'
        dest:       '<%= globalConfig.assetsDev %>/coffee'

# = Task Config: Copy dependency files
