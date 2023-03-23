#!/usr/bin/env ruby.rb
# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('..', __dir__)
require 'bundler/setup'
require 'app/application'

StockerController.run
