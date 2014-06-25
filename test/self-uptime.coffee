{expect} = require 'chai'
Hubot = require('hubot')


describe 'Hubot Self Uptime', ->
  beforeEach ->
    @robot = new Hubot.Robot(null, "mock-adapter", false, "Hubot")
    @user = @robot.brain.userForId('1', name: "mocha", room: "#room")

    require('../index')(@robot)


  it 'hubot uptime', (done) ->
    @robot.adapter.on 'send', (msg,response) ->
      expect(response[0]).to.equal "I've been running since a few seconds ago"
      done()
    @robot.adapter.receive(new Hubot.TextMessage(@user, "Hubot uptime"))
    