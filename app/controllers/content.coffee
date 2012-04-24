Spine = require('spine')
Manager = require('spine/lib/manager')

PageData = require('models/pagedata')
TwMaxView = require('models/twmaxview')
$       = Spine.$

ContentHome = require('controllers/content_home')
ContentContacts = require('controllers/content_contacts')
ContentHelp = require('controllers/content_help')
ContentView = require('controllers/content_view')

class Content extends Spine.Controller
  className: 'content'

  elements:
    '.btn-large': 'Button'

  constructor: ->
    super
    @html require('views/content')()

    @contentview = new ContentView
    @home = new ContentHome
    @contact = new ContentContacts
    @help = new ContentHelp


    @routes
      '/content/home':  ->
        @contentview.home.active(true)
# i.e.       http://0.0.0.0:9294/#/content/contact
      '/content/contact':  ->
        @contentview.contact.active(true)
      '/content/help':  ->
        @contentview.help.active(true)

  # append, replace either append to end of content in DIV (or active element), or replace contents
    @append @contentview

    # Activate Popovers in sub-pages
    $(@Button).popover()

module.exports = Content