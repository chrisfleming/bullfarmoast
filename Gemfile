source 'https://rubygems.org'

gem 'rails', '5.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'haml'
gem 'activerecord-postgis-adapter'
gem 'pg'


gem "capistrano", "~> 3.6"
group :development do
    gem 'rspec-rails', require: false
    gem "vendorer", require: false
    gem 'capistrano-rails',   '~> 1.1', require: false
    gem 'capistrano-bundler', '~> 1.1', require: false
    gem 'capistrano-rvm',   '~> 0.1', require: false 
    gem 'capistrano-passenger',   require: false 
end



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', require: false
  gem 'coffee-rails', require: false
  gem 'uglifier', '>= 1.0.3', require: false
end

gem 'jquery-rails'
gem 'bootstrap', '~> 4.0.0.alpha5'

source 'https://rails-assets.org' do
	  gem 'rails-assets-tether', '>= 1.1.0'
end

gem 'font-awesome-sass'
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
  gem 'webrat', '0.7.1', :require => false
end

# for rss blog parsing....
gem 'simple-rss'

# Markdown
#gem 'rdiscount'
gem 'redcarpet'


# Not sure why we need this, but I keep getting errors without it.
gem 'highline'

gem 'devise'


