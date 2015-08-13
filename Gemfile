source 'https://rubygems.org'

# rails 
gem 'rails'

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
gem 'jquery-rails'

# use haml for templating
gem 'haml-rails'

# allows :markdown filter to be called from haml views:
gem 'redcarpet'

# authentication
gem 'devise'
gem 'devise_invitable'

# omniauth
gem 'omniauth-facebook'
gem 'omniauth-gplus'
gem 'omniauth-instagram'
gem 'omniauth-linkedin'
gem 'omniauth-twitter'

# form helpers and bootstrap styling
gem 'simple_form'
gem 'country_select', github: 'stefanpenner/country_select'

# http://www.rubydoc.info/gems/meta-tags-helpers/0.2.0
gem 'meta-tags-helpers', '~> 0.2.0'

# Configuration
gem 'figaro'

# image uploads
gem 'carrierwave'

# keep track of state on assignments
gem 'aasm'

group :development, :test do

  # test suite
  gem 'minitest-rails'

  # test factories instead of fixtures
  gem 'factory_girl_rails', '~> 4.0'
  
  # guards
  gem 'guard'
  gem 'guard-minitest'
  gem 'guard-livereload'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do 


  # fake data for development
  gem 'faker'

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
end

group :production do 

  gem 'rails_12factor', group: :production
end