# frozen_string_literal: true

source 'https://rubygems.org'
ruby '3.2.2'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'activerecord'
gem 'dotenv'
gem 'erb'
gem 'glimmer-dsl-libui'
gem 'libui'
gem 'rake'
gem 'sqlite3'
gem 'standalone_migrations'
gem 'yaml'
gem 'zeitwerk'

group :test, :development do
  gem 'pry'
  gem 'standard'
end

group :development do
  gem 'ruby-lsp', require: false
end
