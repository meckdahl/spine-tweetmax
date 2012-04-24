Spine = require('spine')
TwMaxView = require('models/twmaxview')
ContentEdit = require('controllers/content_edit')

# Alex MacCaw - List file not found...
# You need to add it as a dependency in slug.json
# then hem build..
List    = require('spine/lib/list')

$       = Spine.$

# Note these members and binds are related ONLY to this elements el (DIV, etc,) and items in it
class ContentHome extends Spine.Controller
  # Member Properties
  className: 'home stack'

  # Member Functions
  constructor: ->
    super
    # Render initial view
    @html require('views/home')()

module.exports = ContentHome

