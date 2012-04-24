Spine = require('spine')
TwMaxView = require('models/twmaxview')

ContentEdit = require('controllers/content_edit')

$       = Spine.$

List    = require('spine/lib/list')


class ContentHelp extends Spine.Controller
  className: 'help stack'

  # 'selector name' map to (:) 'local member name'
#  elements:
#  '.btn-large': 'Button'

  # Member Functions
  constructor: ->
    super
    # Render initial view
    @html require('views/help')()

#  $(@Button).popover()

module.exports = ContentHelp