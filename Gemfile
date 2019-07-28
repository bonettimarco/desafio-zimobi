source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

gem 'rails', '~> 6.0.0.rc2'
gem 'bootstrap-sass', '3.3.7'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'mysql2'
gem 'image_processing', '~> 1.2'

group :development, :test do
  gem 'awesome_print'
  gem 'pry'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'simplecov', '~> 0.16.1', require: false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'

end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '0.20.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
