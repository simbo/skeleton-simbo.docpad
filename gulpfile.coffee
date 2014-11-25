gulp = require 'gulp'
docpad = require 'docpad'

gulp.task 'docpad', ->
    docpad.createInstance {}, (err, docpadInstance) ->
        if err then console.log err.stack
        docpadInstance.action 'generate', (err) ->
            if err then console.log err.stack
        docpadInstance
    return

gulp.task 'default', ->
    console.log 'gulp serve\tstart server'
