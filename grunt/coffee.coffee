###
# + Task Config: CoffeeScript
# https://github.com/gruntjs/grunt-contrib-coffee
# =====================================================================
###

module.exports =

    # overall options
    options:
        separator:          '\n'
        join:               false
        bare:               true
        sourceMap:          true

    # convert all *.coffee to *.js
    all:
        expand:             true
        flatten:            true
        cwd:                '<%= globalConfig.assetsDev %>/coffee'
        src:                [ '*.coffee' ]
        dest:               '<%= globalConfig.assets %>/js/',
        ext:                '.js'

# = Task Config: CoffeeScript
