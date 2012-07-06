sysPath = require 'path'

child_process = require 'child_process'

module.exports = class DoccoRunner
  brunchPlugin: yes
  type: 'javascript'
  extension: 'js'

  constructor: (@config) ->
    child_process.exec  "node_modules/tvjs-docco-husky-brunch/node_modules/.bin/docco-husky vendor/sdk", (error, stdout, stderr) ->
        console.log "exec error: " + error  if error isnt null