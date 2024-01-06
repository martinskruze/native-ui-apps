# frozen_string_literal: true

class Stock < ActiveRecord::Base
  has_many :trades
end
