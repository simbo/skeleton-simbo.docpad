###
# + Task Config: Watch
# https://github.com/gruntjs/grunt-contrib-watch
# =====================================================================
###

module.exports =

    # overall options
    options:
        livereload: true
        event: [
            'added'
            'deleted'
            'changed'
        ]

    # json files
    json:
        files: [
            'package.json'
        ]
        tasks: [
            'build-json'
        ]

    # gruntfile and task configs
    grunt:
        options:
            reload: true

        files: [
            'Gruntfile.coffee'
            'grunt/*.coffee'
        ]
        tasks: [
            'coffeelint:grunt'
        ]

    # main styles
    main_styles:
        files: [
            '<%= globalConfig.assetsDev %>/stylus/*.styl'
            '<%= globalConfig.assetsDev %>/stylus/**/*.styl'
        ]
        tasks: [
            'clean:out_assetsdev_styles'
            'copy:assetsdev_styles_src_out'
            'buildcss'
        ]

    # main scripts
    main_scripts:
        files: [
            '<%= globalConfig.assetsDev %>/coffee/*.coffee'
            '<%= globalConfig.assetsDev %>/coffee/**/*.coffee'
        ]
        tasks: [
            'clean:out_assetsdev_scripts'
            'copy:assetsdev_scripts_src_out'
            'buildjs'
        ]

# = Task Config: Watch
