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
            title:                      "Simbo's DocPad Skeleton"
            description:                """
                                        Some informative description for search engine results.
                                        """
            styles:                     [
                                            '/assets/css/main.min.css'
                                        ]
            scripts:                    [
                                            '/assets/js/main.min.js'
                                        ]

        getPreparedTitle:               ->
                                            if @document.title
                                                "#{@document.title} | #{@site.title}"
                                            else
                                                @site.title

        getPreparedDescription:         ->
                                            @document.description or @site.description


    # =================================
    # Plugin Configuration

    plugins:

        stylus:
            stylusLibraries:
                nib:                    false
            stylusOptions:
                paths:                  []
                compress:               false
                sourcemap:
                    inline:             true

        coffeescript:
            compileOptions:
                sourceMap:              true
                bare:                   true

        consolidate:
            toffee:                     true

        grunt:
            writeAfter:                 false
            generateBefore:             false
            generateAfter:              [ 'build' ]

        highlightjs:
            aliases:
                missinglanguage:        'alternativelanguage'

        robotskirt:
            robotskirtOptions:
                EXT_AUTOLINK:           true
                EXT_FENCED_CODE:        true
                EXT_LAX_SPACING:        true
                EXT_NO_INTRA_EMPHASIS:  true
                EXT_SPACE_HEADERS:      true
                EXT_STRIKETHROUGH:      true
                EXT_SUPERSCRIPT:        true
                EXT_TABLES:             true
                HTML_SKIP_HTML:         false
                HTML_SKIP_STYLE:        false
                HTML_SKIP_IMAGES:       false
                HTML_SKIP_LINKS:        false
                HTML_EXPAND_TABS:       false
                HTML_SAFELINK:          false
                HTML_TOC:               false
                HTML_HARD_WRAP:         false
                HTML_USE_XHTML:         true
                HTML_ESCAPE:            false
            smartypants:                true

    # =================================
    # Environment Configuration

    environments:
        production:
            port:                       9775
            maxAge:                     86400000
            templateData:
                site:
                    url:                "http://myawesomedocpadsite.io"

        development:
            port:                       9005
            maxAge:                     false
            templateData:
                site:
                    url:                "http://localhost:9005"


# = DocPad Configuration
