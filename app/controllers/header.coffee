Spine = require('spine')
$       = Spine.$

class Header extends Spine.Controller
  className: 'header'

  constructor: ->
    super
    @html require('views/header')()
    
module.exports = Header