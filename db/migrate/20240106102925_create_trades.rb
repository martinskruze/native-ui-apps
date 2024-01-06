# frozen_string_literal: true

class CreateTrades < ActiveRecord::Migration[7.1]
  def change
    create_table :trades do |t|
      t.timestamp :execution_time, null: false, comment: 'When the trade happened'
      t.references :stock, foreign_key: true, comment: 'Reference to stock'
      t.double :quantity, precision: 100, scale: 10, comment: 'How many assets being traded'
      t.double :price, precision: 6, scale: 2, comment: 'Asset price'
      t.string :type, null: false, comment: 'Type of trade'
      t.timestamps
    end
  end
end
