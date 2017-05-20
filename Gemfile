source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.0.2"
gem "puma", "~> 3.0"
gem "sass-rails", "~> 5.0"
gem "bootstrap-sass", "~> 3.3.6"
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
gem "react-rails"
gem "webpacker"
gem 'grape'
gem 'active_model_serializers'
gem 'grape-active_model_serializers'
gem 'sinatra', require: false
gem "config"
gem "responders"

group :development, :test do
  gem "mysql2"
  gem "pry"
  gem "byebug", platform: :mri
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :production do
  gem "pg"
  gem "rails_12factor"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
