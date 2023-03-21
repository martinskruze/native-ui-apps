# frozen_string_literal: true

source 'https://rubygems.org'
ruby '3.1.3'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem 'activerecord'
gem 'libui'
gem 'glimmer-dsl-libui'
gem 'sqlite3'
gem 'standalone_migrations', github: "martinskruze/standalone-migrations"
gem 'rake'
gem 'dotenv'
gem 'erb'
gem 'yaml'
gem 'zeitwerk'

group :test, :development do
  gem 'pry'
  gem 'standard'
end