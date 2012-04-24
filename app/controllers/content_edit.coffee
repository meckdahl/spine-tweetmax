Spine = require('spine')
TwMaxView = require('models/twmaxview')

# Alex MacCaw - List file not found...
# You need to add it as a dependency in slug.json
# then hem build..
List    = require('spine/lib/list')

$       = Spine.$


#============ class Edit - Not Used as yet ==============

class ContentEdit extends Spine.Controller
  className: 'edit'

  elements:
    'form': 'form'


  events:
    'submit form': 'submit'
    'click .save': 'submit'


  constructor: ->
    super
    TwMaxView.bind 'change', (twmaxview) =>
      @render() if twmaxview.eql(@item)
    @active @change


    @active @render

  render: ->
    @html require('views/form')()



  change: (params) =>
    @item = TwMaxView.find(params.id)
    @render()


  submit: (e) ->
    e.preventDefault()
    twmaxview = TwMaxView.fromForm(@form)
    if twmaxview.save()
      @navigate('/twmaxviews', twmaxview.id, trans: 'left')


    delete: ->
      @item.destroy() if confirm('Are you sure?')

module.exports = ContentEdit