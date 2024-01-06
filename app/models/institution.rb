# frozen_string_literal: true

class Institution < ActiveRecord::Base
  has_many :trades
end
