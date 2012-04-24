Spine = require('spine')
TwMaxView = require('models/twmaxview')
$       = Spine.$

class ContentContacts extends Spine.Controller
  className:'contacts stack'
  constructor: ->
    super
    @html require('views/contacts')()
    
module.exports = ContentContacts