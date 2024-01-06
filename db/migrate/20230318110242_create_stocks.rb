# frozen_string_literal: true

class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string(
        :ticker,
        index: { unique: true, name: 'uniq_ticker' },
        null: false,
        comment: 'Stock ticker (used in API calls)'
      )
      t.string :name, null: false, comment: 'Company name'
      t.timestamps
    end
  end
end
