# Description
#   Returns hubot's uptime
#
# Dependencies:
#   "relative-date": "1.1.1"
#
#
# Commands:
#   hubot uptime - retuns uptime
#
#
# Author:
#   markhuge

since = require 'relative-date'

module.exports = (robot) ->
  startup = new Date().getTime()

  robot.hear /uptime/i, (msg) ->
    msg.send "I've been running since #{since(startup)}"
