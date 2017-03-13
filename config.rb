activate :blog do |blog|
  blog.sources = 'blog/posts/{year}-{month}-{day}-{title}.html'
  blog.permalink = '{year}/{month}/{day}/{wppost_name}/index.html'

  blog.layout = 'blog'
  blog.month_template = 'blog/calendar.html'
  blog.year_template = 'blog/calendar.html'
  blog.paginate = true
  blog.per_page = 15
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
