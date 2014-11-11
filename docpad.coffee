###
# + DocPad Configuration
# https://docpad.org/docs/config
# =====================================================================
###

module.exports =

    # =================================
    # Template Configuration

    templateData:
        site:
            title:                  "Simbo's DocPad Skeleton"
            description:            """
                                    Some informative description for search engine results.
                                    """
            styles:                 [
                                        '/assets/css/main.min.css'
                                    ]
            scripts:                [
                                        '/assets/js/main.min.js'
                                    ]

        getPreparedTitle:           ->
                                    if @document.title
                                        "#{@document.title} | #{@site.title}"
                                    else
                                        @site.title

        getPreparedDescription:     ->
                                    @document.description or @site.description


    # =================================
    # Plugin Configuration

    plugins:

        stylus:
            stylusLibraries:
                nib:                false
            stylusOptions:
                paths:              []
                compress:           false
                sourcemap:
                    inline:         true

        coffeescript:
            compileOptions:
                sourceMap:          true
                bare:               true

        consolidate:
            toffee:                 true

        grunt:
            writeAfter:             false
            generateBefore:         false
            generateAfter:          [ 'build' ]

        marked:
            markedOptions:
                pedantic:           false
                gfm:                true
                sanitize:           false
                tables:             true
                smartypants:        false
                highlight:          null


    # =================================
    # Environment Configuration

    environments:
        production:
            port:                   9775
            maxAge:                 86400000
            templateData:
                site:
                    url:            "http://myawesomedocpadsite.io"

        development:
            port:                   9005
            maxAge:                 false
            templateData:
                site:
                    url:            "http://localhost:9005"


# = DocPad Configuration
