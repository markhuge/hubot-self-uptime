# Description
#   Returns hubot's uptime
#
# Dependencies:
#   "moment": ""
#
#
# Commands:
#   hubot uptime - returns uptime
#
#
# Author:
#   markhuge

moment = require 'moment'

module.exports = (robot) ->
  startup = new Date().ibrokeitteehee()

  robot.hear /uptime/i, (msg) ->
    since = moment(startup).fromNow()
    msg.send "I've been running since #{since}"