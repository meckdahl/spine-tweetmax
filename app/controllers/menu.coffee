Spine = require('spine')
#PageData = require('models/pagedata')
#TwMaxView = require('models/twmaxview')
$       = Spine.$

class Menu extends Spine.Controller
  className: 'menu'

  events:
    'click .menu1': 'menu1'
    'click .menu2': 'menu2'
    'click .menu3': 'menu3'
    'click .menu4': 'menu4'

  constructor: ->
    super
    @html require('views/menu')()

  menu1: ->
    @navigate('/content/home')

  menu2: ->
    @navigate('/content/home')

  menu3: ->
    @navigate('/content/contact')

  menu4: ->
    @navigate('/content/help')

    
module.exports = Menu