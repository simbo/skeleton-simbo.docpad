###
# + Task Config: CoffeeLint
# https://github.com/vojtajina/grunt-coffeelint
# =====================================================================
###

module.exports =

    # overall options
    options:
        indentation:
            value:      4

    # all scripts
    all:                '<%= globalConfig.assetsDev %>/coffee/**/*.coffee'

    # grunt scripts
    grunt:              [
                            '<%= globalConfig.root %>/grunt/**/*.coffee'
                            '<%= globalConfig.root %>/Gruntfile.coffee'
                        ]

# = Task Config: CoffeeLint
