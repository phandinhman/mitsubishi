source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.0.2"
gem "puma", "~> 3.0"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "jbuilder", "~> 2.5"
gem "slim"
gem "font-awesome-rails"
gem "friendly_id", "~> 5.1.0"
gem "faker"
gem "devise"
gem "ckeditor", github: "galetahub/ckeditor"
gem "mini_magick"
gem "carrierwave"
gem "webpacker"
gem 'grape'
gem 'active_model_serializers'
gem 'grape-active_model_serializers'
gem 'sinatra', require: false
gem "config"
gem "responders"
gem "rack-cors"
gem "bcrypt"
gem "jwt"
gem "devise_token_auth"
gem "cancan"
gem "will_paginate"

group :development, :test do
  gem "mysql2"
  gem "pry"
  gem "byebug", platform: :mri
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen"
  gem "capistrano",  '3.5.0'
  gem 'capistrano-rvm'
  gem 'capistrano-nginx'
  gem 'capistrano3-puma'
  gem 'capistrano-rails'
  gem 'capistrano-rails-db'
  gem 'capistrano-rails-console'
  gem 'capistrano-upload-config'
  gem 'sshkit-sudo'

end

group :production do
  gem "pg"
  gem "rails_12factor"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
