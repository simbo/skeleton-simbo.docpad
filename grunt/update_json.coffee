###
# + Task config: Update json
# https://github.com/andreaspizsa/grunt-update-json
# =====================================================================
###

module.exports =

    # overall options
    options:
        indent:     '  '

    # package.json data into bower.json
    bower:
        src:        '<%= globalConfig.root %>/package.json'
        dest:       '<%= globalConfig.root %>/bower.json'
        fields:     [
                        'name'
                        'description'
                        'author'
                        'version'
                        'homepage'
                        'license'
                        'private'
                        'repository'
                    ]

# = Task config: Update json
