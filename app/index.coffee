require('lib/setup')

Spine = require('spine')
$       = Spine.$

Header = require('controllers/header')
Menu = require('controllers/menu')
Content = require('controllers/content')
TwMaxView = require('models/twmaxview')

class App extends Spine.Controller


  constructor: ->

    # super sets up inheritance from Spine class into App class
    super
    # This would show a main view that could be starting point
#    @html require('views/main')()

    @header = new Header
    @menu = new Menu

    divide = $('<div />').addClass('vdivide')
    hrule = ("<hr>")

    # @content is actually this.content (@ = this. - hence preserving context)
    @content = new Content
    @replace @header

    @append @menu, divide, @content
#     @append hrule, @menu, hrule, divide, @content

  # Can replace elements contents too, instead of appending to existing contents
#    @replace @content

    Spine.Route.setup()

module.exports = App
    