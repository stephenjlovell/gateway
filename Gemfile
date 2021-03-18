source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.1'
gem 'pg', '~> 1.1' # Use postgresql as the database for Active Record
gem 'puma', '~> 5.0' # Use Puma as the app server

gem 'jbuilder', '~> 2.7' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'grape', '~> 1.5'
gem 'grape-swagger', '~> 1.3'
gem 'omniauth'
gem 'omniauth_openid_connect'


# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :development do
  gem 'listen', '~> 3.3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
