# Description:
#   Anyone can have voice or op
# Dependencies:
#   "hubot-irc"
#
# Commands:
#   hubot join channel <name> - join some channel 

module.exports = (robot) ->
  robot.respond /join channel (.*)/i, (res) ->
    channel = res.match[1]
    res.reply "join #{channel}."
    robot.adapter.command('JOIN', channel)

