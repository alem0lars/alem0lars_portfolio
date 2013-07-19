define ->

  # { setup functions

  setup_analytics = () ->
    _gaq = [['_setAccount','UA-XXXXX-X'], ['_trackPageview']]

    f = (d,t) ->
      g = d.createElement(t)
      s = d.getElementsByTagName(t)[0]
      g.src = ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js'
      s.parentNode.insertBefore(g,s)

    f(document, 'script')

  # }

  console.log '>> setup'

  setup_analytics

  console.log '<< setup'
