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

# = Task Config: Copy dependency files
