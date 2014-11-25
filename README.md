Simbo's DocPad Skeleton
=======================

Goals
--------------------------------------------------------------------------------

  - Full build processes for styles and scripts from
        [Stylus](https://github.com/LearnBoost/stylus) and
        [CoffeeScript](https://github.com/jashkenas/coffeescript/)
    to concatenated and minified CSS and Javascript. Including
        [Autoprefixer](https://github.com/postcss/autoprefixer),
        [CSS MQPacker](https://github.com/hail2u/node-css-mqpacker) and
        [CSSWring](https://github.com/hail2u/node-csswring)
    in CSS post processing, 
        [CoffeeLint](https://github.com/clutchski/coffeelint) /
        [JSHint](https://github.com/jshint/jshint/) and
        [UglifyJS](https://github.com/mishoo/UglifyJS)
    in Javascript post processing and full sourcemaps support for scripts and
    styles through all steps.

  - assets versioning with cache busting

  - [Toffee](https://github.com/malgorithms/toffee) as template language

  - [GFM](https://help.github.com/articles/github-flavored-markdown/) and [PHP Markdown Extra](https://michelf.ca/projects/php-markdown/extra/) support

  - Sourcecode highlighting for multiple languages

  - SEO friendly URLs; "/YYYY/MM/TITLE" for posts

  - Stylus mixins/modules collection

  - basic page template

  - basic post template

  - jQuery using CDN with local alternative source

  - Google Webfonts using WebfontLoader



Getting started
--------------------------------------------------------------------------------

### Setup

You need to have installed
    [Node](http://nodejs.org/),
    [Bower](http://bower.io/),
    [Grunt](http://gruntjs.com/) and
    [DocPad](https://docpad.org/)
gobally.  
Clone the repo or download and unpack the zip file.  
Use the following commands to install all dependencies:

```sh
npm install
bower install
grunt copydeps
```

### Usage

```sh
npm run dev    # build and run in development environment
npm run live   # build and run in production environment
npm run build  # build in development environment
```

Further explanations and FAQ
--------------------------------------------------------------------------------

### Why Robotskirt/Sundown as markdown parser?

Notes
--------------------------------------------------------------------------------

- http://takitapart.com/posts/organizing-docpad/
- https://github.com/ervwalter/ewalnet-docpad
- https://github.com/w33ble/joefleming-net
- https://github.com/docpad/docpad-plugin-cleanurls/issues/9
- http://emmet.io/blog/docpad/

