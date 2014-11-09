###
# + Grunt config
# =====================================================================
###

module.exports = (grunt) ->
    grunt.util.linefeed = '\n'

    # project vars
    # usage: <%= globalConfig.var %>
    globalConfig = do ->
        _               = {}
        _.root          = '.'
        _.bower         = _.root + '/bower_components'
        _.out           = _.root + '/out'
        _.assets        = _.out  + '/assets'
        _.assetsDev     = _.out  + '/assets-dev'
        _.raw           = _.root + '/static'
        _.rawAssets     = _.raw  + '/assets'
        _.rawAssetsDev  = _.raw  + '/assets-dev'
        _

    # measure grunt task runtimes
    # https://github.com/sindresorhus/time-grunt
    require('time-grunt') grunt

    # task and config autoloading
    # https://github.com/firstandthird/load-grunt-config
    # https://github.com/shootaroo/jit-grunt
    require('load-grunt-config') grunt,
        jitGrunt:           true
        data:
            pkg:            grunt.file.readJSON 'package.json'
            globalConfig:   globalConfig

# = Grunt config
