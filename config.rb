###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

###
# Compass
###
compass_config do |config|
  config.output_style = :compressed
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

###
# Helpers
###
helpers do
  def get_url
    absolute_prefix + url_prefix
  end
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :url_prefix, '/'
set :absolute_prefix, 'http://localhost:4567'
activate :directory_indexes

# Build-specific configuration
configure :build do
  puts "local build"
  set :url_prefix, "/a/meme"
  set :absolute_prefix, "http://www.vox.com"
  activate :asset_hash
  activate :chorus
  activate :minify_javascript
  activate :minify_css
end
