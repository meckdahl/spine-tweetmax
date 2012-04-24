Spine = require('spine')
Manager = require('spine/lib/manager')

PageData = require('models/pagedata')
TwMaxView = require('models/twmaxview')
$       = Spine.$

ContentHome = require('controllers/content_home')
ContentContacts = require('controllers/content_contacts')
ContentHelp = require('controllers/content_help')

class ContentView extends Spine.Stack
  className: 'content view'

  controllers:
    home: ContentHome
    contact: ContentContacts
    help: ContentHelp

  default: 'home'

module.exports = ContentView