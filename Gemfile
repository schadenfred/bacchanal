source 'https://rubygems.org'

# rails 
gem 'rails', '4.2.5'

# js engine
gem 'execjs'

# Use postgresql as the database for Active Record
gem 'pg'

# server
gem 'puma'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# twitter bootstrap framework
gem 'bootstrap-sass'

# font awesome
gem 'font-awesome-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-ui-rails'
gem 'rails-jquery-tokeninput'

# provide serialized json for ember
gem 'active_model_serializers'

# use haml for templating
gem 'haml-rails'

# allows :markdown filter to be called from haml views:
gem 'redcarpet'

# authentication
gem 'devise'
gem 'devise_invitable'

# cron jobs
gem 'whenever', :require => false

# omniauth
gem 'omniauth-facebook'
gem 'omniauth-gplus'
gem 'omniauth-instagram'
gem 'omniauth-linkedin'
gem 'omniauth-twitter'

# define user roles on a resource level
gem 'rolify'

# authorization
gem 'pundit'

# form helpers and bootstrap styling
gem 'simple_form'
gem 'country_select', github: 'stefanpenner/country_select'

# http://www.rubydoc.info/gems/meta-tags-helpers/0.2.0
gem 'meta-tags-helpers', '~> 0.2.0'

# SEO friendly urls
gem 'friendly_id', '~> 5.1.0'

# pagination
gem 'kaminari'

# tags across different models
gem 'acts-as-taggable-on'

# server configuration
gem 'figaro'

# image uploads
gem 'dragonfly'
gem 'dropzonejs-rails'

# data visualizations & flavor wheels
gem 'd3-rails'

# keep track of state on assignments
gem 'aasm'

# allow comments to reference parents and children
gem 'ancestry'

# caching for pictures, among other things
gem 'rack-cache'
gem 'dalli'
gem 'kgio'

# Buttafly engine for importing spreadsheet data, local version
gem 'buttafly', github: 'schadenfred/buttafly', tag: 'v0.1'

# development data
gem 'seedbank'

gem 'geocoder'
# gem 'monsanto' #, github: 'schadenfred/monsanto'
# gem 'monsanto', path: '~/work/opensource/monsanto'#, require: false

gem 'faker'
gem 'faker-stoked', github: 'schadenfred/faker-stoked'#, tag: 'v0.2.8'
gem 'faker-bloocher', github: 'schadenfred/faker-bloocher'

group :development, :test do

  # test suite
  gem 'minitest-rails'

  # test factories instead of fixtures
  gem 'factory_girl_rails', '~> 4.0'
  
  # guards
  gem 'guard'
  gem 'guard-minitest'
  gem 'guard-livereload'

  # silence error on guard:
  # gem 'listen', '~> 2.7.12'

  # debugger
  gem 'byebug'

  # Access an IRB console on exception pages 
  gem 'web-console', '~> 2.0'

  # reload development server
  gem 'spring'
end

group :development do 

  gem 'capistrano', '~> 3.1'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false


  gem 'rails_best_practices'

end

group :test do 

  gem 'minitest-rails-capybara'
  gem 'capybara-email'

  gem 'selenium-webdriver'
  gem 'minitest-given'

  # mocks & stubs
  gem 'mocha'
  
  # for save_and_open_page method in capybara to work
  gem 'launchy' 

  # clean out database between runs
  gem 'database_cleaner'

  # nyan cat, motherfuckers:
  gem 'minitest-nyan-cat'
end

group :production do 

  gem 'rails_12factor', group: :production
end