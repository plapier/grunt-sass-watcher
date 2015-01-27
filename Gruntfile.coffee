module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")
    watch:
      scripts:
        files: '../server/metaserver/metaserver/static/css/streams/**/_*.scss'
        options:
          spawn: false

  grunt.loadNpmTasks "grunt-contrib-watch"

  grunt.event.on "watch", (action, filepath, target) ->
    grunt.log.writeln target + ": " + filepath + " has " + action
    fileContents = grunt.file.read '../server/metaserver/metaserver/static/css/streams/application.scss'
    grunt.file.write '../server/metaserver/metaserver/static/css/streams/application.scss', fileContents + ''
