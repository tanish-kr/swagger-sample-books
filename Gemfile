source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  gem 'rspec', '~> 3.5'
  gem 'rspec-rails', '~> 3.5', '>= 3.5.1'
  gem 'simplecov', '~> 0.12'
  gem 'test-queue', '~> 0.2'

  gem 'database_cleaner', '~> 1.5', '>= 1.5.3'
  gem 'factory_girl', '~> 4.7'

end

group :development do
  gem 'listen', '~> 3.0.5'

  gem 'pry'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'yard', '~> 0.8.1'
  gem 'rubocop', '~> 0.42.0'

  gem 'guard', '~> 2.14'
  gem 'guard-rspec', '~> 4.7', '>= 4.7.2'
  gem 'guard-yard', '~> 2.1', '>= 2.1.4'
  gem 'guard-rubocop', '~> 1.2'
  gem 'guard-bundler', '~> 2.1'
  gem 'guard-spring', '~> 1.1', '>= 1.1.1'
  gem 'guard-shell', '~> 0.7.1'

  gem 'capistrano', '~> 3.5'
  gem 'capistrano3-unicorn', '~> 0.2.1'
  gem 'capistrano-rbenv', '~> 2.0', '>= 2.0.4'
  gem 'capistrano-rails', '~> 1.1', '>= 1.1.7'
  gem 'capistrano-bundler', '~> 1.1', '>= 1.1.4'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec', '~> 1.0', '>= 1.0.4'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'spring-commands-rspec', '~> 1.0', '>= 1.0.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
