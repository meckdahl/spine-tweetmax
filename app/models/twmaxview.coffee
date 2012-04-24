Spine = require('spine')

class TwMaxView extends Spine.Model
  @configure 'Twmaxview', 'name', 'number'

  @extend @Local

  @nameSort: (a, b) ->
    if (a.name or a.number) > (b.name or b.number) then 1 else -1


module.exports = TwMaxView