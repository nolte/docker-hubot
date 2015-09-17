# Description:
#   myFirst HubotScript
#
# Commands:
#   hubot badger foo - say something
#   hubot open the pod bay doors - say something
#   hubot I like pie - say something
#
# Notes:
#   first step
#
# Author:
#  nolte07

module.exports = (robot) ->
  robot.hear /badger/i, (res) ->
    res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"

  robot.respond /open the pod bay doors/i, (res) ->
    res.reply "I'm afraid I can't let you do that."

  robot.hear /I like pie/i, (res) ->
    res.emote "makes a freshly baked pie"