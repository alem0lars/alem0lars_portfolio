# == generic configuration =====================================================

set :haml, { :ugly => !development?, :format => :html5 } # haml settings
set :markdown_engine, :redcarpet # use redcarpet as the markdown engine

activate :livereload # enable live reloading for changed files

activate :automatic_image_sizes # automatic image dimensions on image_tag helper

require 'susy' # enable susy + compass integration
compass_config do |config| # compass configuration
  config.output_style = :expanded
end

set :css_dir, 'assets/styles' # css directory
set :js_dir, 'assets/scripts' # scripts directory
set :images_dir, 'assets/images' # images directory


# == build-specific configuration ==============================================

configure :build do

  unless development?
    # For example, change the Compass output style for deployment
    activate :minify_css

    # Minify Javascript on build
    activate :minify_javascript

    # Enable cache buster
    activate :cache_buster

    # Compress PNGs after build
    require "middleman-smusher"
    activate :smusher
  end

  # Create favicon/touch icon set from source/favicon_base.png
  activate :favicon_maker

end
