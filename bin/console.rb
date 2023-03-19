#!/usr/bin/env ruby.exe
# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('..', __dir__)

require 'bundler/setup'
require 'app/application'
require 'pry'

Pry.start