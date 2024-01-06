# frozen_string_literal: true

class Trade < ActiveRecord::Base
  belongs_to :stock
end
