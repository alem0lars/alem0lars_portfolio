requirejs.config

  # by default load any module ids from `js/vendor`, which are the third-party
  # scripts
  baseUrl: '/assets/scripts/vendor'

  # if the module id starts with `app`, load it from the `js/app` dir.
  # `paths` config is relative to the baseUrl, and never includes a `.js`
  # extension since the paths config could be for a directory.
  paths:
    app: '../app'

  shim:

    # jquery shims
    'jquery': { deps: [], exports: '$' }

    # other libs shims
    'sugar': []
    'modernizr': []

get_requires = () ->
  requires = [

    # jquery - requires
    'jquery'

    # other libs - requires
    'sugar'
    'modernizr'

    # app - generic - requires
    'app/setup'
  ]

  # { utility functions

  on_page = (names, required_name) ->
    names = [names] unless names instanceof Array

    for name in names
      if  (name == window.location.pathname) ||
          ("/#{name}" == window.location.pathname) ||
          ("#{name}.html" == window.location.pathname) ||
          ("/#{name}.html" == window.location.pathname)
        requires.push required_name

  # }

  # { requires for specific pages
  # INF: empty
  # }

  requires # return

requirejs get_requires()
