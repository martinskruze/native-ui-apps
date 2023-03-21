#!/usr/bin/env ruby.rb
# frozen_string_literal: true

require 'bundler/setup'

$LOAD_PATH.unshift File.expand_path('..', __dir__)
require 'app/application'

StockerController.run
