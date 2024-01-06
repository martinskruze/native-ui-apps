# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('..', __dir__)
require 'bundler/setup'
require 'app/application'

wday_stock = Stock.create!(ticker: 'WDAY', name: 'Workday inc')
etrade = Institution.create!(title: 'ETRADE')
Purchase.create!(
  stock: wday_stock,
  institution: etrade,
  execution_time: DateTime.current.beginning_of_year,
  quantity: 5.0,
  price: 155.3221
)
Purchase.create!(
  stock: wday_stock,
  institution: etrade,
  execution_time: DateTime.current.beginning_of_year + 5.days,
  quantity: 2.0,
  price: 175.3112
)
Sell.create!(
  stock: wday_stock,
  institution: etrade,
  execution_time: DateTime.current.beginning_of_month,
  quantity: 3.0,
  price: 278.321
)
Sell.create!(
  stock: wday_stock,
  institution: etrade,
  execution_time: DateTime.current.beginning_of_month + 10.days,
  quantity: 5.0,
  price: 302.9932
)
