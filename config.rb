# == Markdown ==================================================================

set :markdown_engine, :redcarpet


# == Livereload ================================================================

activate :livereload


# == Compass ===================================================================

# Susy grids in Compass
require 'susy'

# Change Compass configuration
compass_config do |config|
  config.output_style = :expanded
end


# == Page options, layouts, aliases and proxies ================================

# INF: Empty


# == Helpers ===================================================================

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes


# == Assets configs ============================================================

set :css_dir, 'assets/styles'

set :js_dir, 'assets/scripts'

set :images_dir, 'assets/images'


# == Build-specific configuration ==============================================

configure :build do

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Create favicon/touch icon set from source/favicon_base.png
  activate :favicon_maker

  # Enable cache buster
  # activate :cache_buster

  # Compress PNGs after build
  require "middleman-smusher"
  activate :smusher

end
