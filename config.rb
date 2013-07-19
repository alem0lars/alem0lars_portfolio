# == generic configuration =====================================================

# enable syntax highlighting
activate :syntax, linenos: 'inline', anchorlinenos: true, linenostart: 2
# enable live reloading for changed files
activate :livereload
# automatic image dimensions on image_tag helper
activate :automatic_image_sizes

# `haml` settings:
# - turn off automatic indentation
# - use html5 by default
set :haml, { ugly: true, format: :html5 }
# use `redcarpet` as the markdown engine
set :markdown_engine, :redcarpet
# apply syntax to markdown
set :markdown, fenced_code_blocks: true, smartypants: true

# enable `susy + compass` integration
require 'susy'
# `compass` configuration
compass_config do |config|
  config.output_style = :expanded
end

set :css_dir, 'assets/styles'
set :js_dir, 'assets/scripts'
set :images_dir, 'assets/images'


# == build-specific configuration ==============================================

configure :build do

  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
  # compress `png`s after build
  require "middleman-smusher"
  activate :smusher
  # create `favicon/touch` icon set from `source/favicon_base.png`
  activate :favicon_maker

end
