# frozen_string_literal: true

class Trade < ActiveRecord::Base
  belongs_to :stock
  belongs_to :institution
end
