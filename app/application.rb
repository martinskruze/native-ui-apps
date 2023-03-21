# frozen_string_literal: true

ENV['ENVIRONMENT'] ||= 'development'

require 'sqlite3'
require 'standalone_migrations'
require 'glimmer-dsl-libui'
require 'zeitwerk'


loader = Zeitwerk::Loader.new
loader.push_dir("app/models")
loader.push_dir("app/controllers")
loader.setup

def db_configuration
  db_configuration_file_path = File.join(File.expand_path('..', __dir__), 'db', 'config.yml')
  db_configuration_result = ERB.new(File.read(db_configuration_file_path)).result

  YAML.safe_load(db_configuration_result, aliases: true)
end

ActiveRecord::Base.establish_connection(db_configuration[ENV['ENVIRONMENT']])

module Application
  class Error < StandardError; end

  # Your code goes here...
end