###
# + DocPad Configuration
# https://docpad.org/docs/config
# =====================================================================
###

# moment.js
moment = require 'moment'
moment.locale 'de'

# regexp for post date in filenames
postFilenameDateRegExp = /\b(\d{4})[-_]?(\d{2})[-_]?(\d{2})[-_]?/

module.exports =

    # =================================
    # Paths Configuration

    outPath:                            'out'
    srcPath:                            'src'
    documentsPaths:                     ['render']
    filesPaths:                         ['static']
    layoutsPaths:                       ['layouts']
    ignorePaths:                        false
    ignoreHiddenFiles:                  false
    ignoreCommonPatterns:               true
    ignoreCustomPatterns:               false

    # =================================
    # Template data and functions

    templateData:

        site:
            title:                      "Simbo's DocPad Skeleton"
            description:                """
                                        Some informative description for search engine results.
                                        """
            styles:                     ['/assets/css/main.min.css']
            scripts:                    ['/assets/js/main.min.js']
            jqueryVersion:              '2.1.1'
            googleAnalytics:            'UA-12345678-9'
            googleFonts:                [
                                            'Open+Sans:300italic,400italic,700italic,700,300,400:latin'
                                            'Source+Code+Pro:400,700:latin'
                                        ]
            dateFormat:                 "Do MMM YYYY"
            dateFormatShort:            "DD.MM.YY"
            dateFormatLong:             "dddd, Do MMMM YYYY"
            excerptLength:              140

        moment: moment

        _s: require 'underscore.string'

        getPreparedTitle: ->
            if @document.title
                "#{@document.title} | #{@site.title}"
            else
                @site.title

        getPreparedDescription: ->
            @document.description or @site.description

        getPostDate: (post, format) ->
            post = post or @document
            format = format or @site.dateFormat
            @moment(post.date).format(format)

        getExcerpt: (post) ->
            excerpt = (post or @document).contentRenderedWithoutLayouts
            moreTag = /<!--\s*more\s*-->/i.exec(excerpt)
            if moreTag
                excerpt = @_s.trim @_s.stripTags( excerpt[0..moreTag.index-1] )
            else
                excerpt = @_s.prune @_s.stripTags(excerpt), @site.excerptLength, '&hellip;'
            excerpt

    # =================================
    # Collections

    collections:

        # all posts, ordered by descending date
        posts: (database) ->
            @getCollection('html').findAllLive
                relativeOutDirPath:
                    $startsWith: 'posts'
            , [ date: -1 ]

        # all pages (not posts), ordered by ascending title
        pages: (database) ->
            collection = @getCollection('html').findAllLive
                relativeOutDirPath:
                    $ne:
                        $startsWith: 'posts'
            , [ title: 1 ]

        # cleanurls collection, providing 'skipCleanUrls' meta option
        cleanurls: (database) ->
            @getCollection('html').findAllLive
                skipCleanUrls:
                    $ne: true

    # =================================
    # Events

    events:

        extendCollections: (opts) ->
            # when adding items to posts collection
            @docpad.getCollection('posts').on 'add', (document) ->
                # set default layout for posts
                document.setMetaDefaults
                    layout: 'post'
                # if post basename contains date, set post date
                if postDate = document.get('basename').match postFilenameDateRegExp
                    postDate = new Date postDate[1] + '-' + postDate[2] + '-' + postDate[3]
                    document.getMeta().set 'date', postDate
                    document.set 'date', postDate
            @

        renderBefore: (opts, next) ->
            # walk through posts collection
            @docpad.getCollection('posts').forEach (document) ->
                # get post basename without date
                postBasename = document.get('basename').replace postFilenameDateRegExp, ''
                # set date slug in post url
                postUrlDateSlug = moment.utc(document.get('date')).format('YYYY/MM')
                # set post url by date and basename
                document.setUrl "/posts/" + postUrlDateSlug + "/" + postBasename + "/"
            next()

    # =================================
    # Plugin Configuration

    plugins:

        # https://github.com/docpad/docpad-plugin-stylus
        stylus:
            stylusLibraries:
                nib:                    false
            stylusOptions:
                paths:                  []
                compress:               false
                sourcemap:
                    inline:             true

        # https://github.com/docpad/docpad-plugin-coffeescript
        coffeescript:
            compileOptions:
                sourceMap:              true
                bare:                   true

        # https://github.com/robloach/docpad-plugin-consolidate
        consolidate:
            toffee:                     true

        # https://github.com/robloach/docpad-plugin-grunt
        grunt:
            writeAfter:                 false
            generateBefore:             false
            generateAfter:              [
                                            'build'
                                            'clean:out_cleanup'
                                        ]

        # https://github.com/docpad/docpad-plugin-cleanurls
        cleanurls:
            enabled:                    true
            collectionName:             'cleanurls'
            static:                     true
            trailingSlashes:            true

        # https://github.com/docpad/docpad-plugin-highlightjs/
        highlightjs:
            aliases:
                missinglanguage:        'alternativelanguage'

        # https://github.com/docpad/docpad-plugin-robotskirt
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
