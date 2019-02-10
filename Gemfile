source 'https://rubygems.org'

ruby "2.2.7"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'

# REMOVING FOR PUSH TO HEROKU
# Use sqlite3 as the database for Active Record
#gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 5.0.0.beta'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Puma as the app server
# https://devcenter.heroku.com/changelog-items/594
gem 'puma', '< 2.6.0'

gem 'newrelic_rpm'

gem 'secondbase', github: 'misteral/secondbase'
gem 'activerecord4-redshift-adapter', '~> 0.2.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# For push to hosting
gem 'paperclip'
gem 'aws-sdk', '< 2.0'
gem 'commontator', '~> 4.11.1'
# For heroku
gem 'rails_12factor', group: :production
gem 'pg'
gem 'sidekiq'
gem 'sidekiq-client-cli'
gem 'sidekiq-limit_fetch'
gem 'whenever', :require => false
gem 'sinatra', :require => nil
gem 'airbrake', '~> 5.0'

gem "cocoon"

gem 'ruby-measurement' # convert measurments
gem 'axlsx'

#gem 'tilt', '~> 1.4.1'
#gem 'tilt-jbuilder', require: 'sinatra/jbuilder'
#gem 'endpoint_base', github: 'spree/endpoint_base'
#gem 'nori'

gem 'ajax-datatables-rails', github: 'misteral/ajax-datatables-rails' # ajax functions for datatables

group :development do
  gem 'annotate', require: false
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'diffy'
  # gem 'bullet' # n+1 detections, slowdown frontend
  gem 'httplog' # log http requests
  gem 'meta_request' # Chrome rails panel
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  gem 'byebug'
  gem 'factory_girl_rails', '~> 4.5.0'
  gem 'launchy'
  gem 'letter_opener'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.5' # moving rspec-rails to dev/test env so mailer previews work
  gem 'rspec_junit_formatter'
  gem 'spring-commands-rspec' # Speed up start rspec
end

group :test do
  # gem 'stackprof'
  gem 'ffaker'
  gem 'capybara', '~> 2.4'
  gem 'capybara-screenshot', '~> 1.0.11'
  gem 'database_cleaner', '~> 1.3'
  gem 'email_spec'
  gem 'rspec-activemodel-mocks', '~> 1.0.2'
  gem 'rspec-collection_matchers'
  gem 'rspec-its'
  gem 'simplecov'
  gem 'webmock', '1.8.11'
  gem 'poltergeist', '1.9.0'
  gem 'phantomjs', '2.1.1'
  gem 'timecop'
  gem 'with_model'
  gem 'mutant-rspec', '~> 0.8.0', require: false
  gem 'shoulda-matchers', '~> 3.1'
  gem 'shoulda-callback-matchers', '~> 1.1.1'
  # gem 'selenium-webdriver'
  gem 'test_after_commit'
  gem 'rspec-sidekiq'
end

gem 'spree', github: 'spree/spree', branch: '3-0-stable'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '3-0-stable'
gem 'spree_gateway', github: 'spree/spree_gateway', branch: '3-0-stable'
gem 'spree_product_assembly', github: 'Sweetist/spree-product-assembly', branch: '3-0-stable-getsweet'


gem 'figaro' # for saving environment variables
gem 'highcharts-rails'
gem 'quickbooks-ruby', github: 'Sweetist/quickbooks-ruby', branch: 'v1-3-stable'
gem 'oauth-plugin'
# gem 'wicked_pdf'
# gem 'wkhtmltopdf-binary'

# Qbd integration gems
gem 'soap4r-ruby1.9'
gem 'logger-application'
gem 'wash_out', '0.9.0'
# / Qbd integraiton gems

gem 'attribute-defaults'
gem 'smarter_csv'

# rabl gem for apis
gem 'rabl'

# Adjusting CORS for Cloudfront usage
gem 'rack-cors', :require => 'rack/cors'

# Adding pdf invoice gems
gem 'prawn'
gem 'prawn_rails'
gem 'combine_pdf'

# Adding simple form since alchemy is removed
gem 'simple_form'

# Using gem to prevent emails to actual people in staging
gem 'sanitize_email'

gem 'spree_tax_cloud', github: 'Sweetist/spree_tax_cloud', branch: 'master'
gem 'spree_wombat', github: 'Sweetist/spree_wombat', branch: 'master'

gem 'foreman'

# The auto_link function from Rails
gem 'rails_autolink', '~> 1.1', '>= 1.1.6'
