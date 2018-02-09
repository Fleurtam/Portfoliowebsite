activate :livereload

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions
require 'extensions/build_cleaner'

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

configure :build do
  activate :relative_assets
  activate :build_cleaner
end





# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
