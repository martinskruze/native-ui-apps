# frozen_string_literal: true

class StockerController
  COLUMN_DATA = %i[ticker name]
  def self.run
    window("Stocker", 400, 400) {
      table(:editable) {
        text_column('Ticker')
        text_column('Name')

        editable true
        cell_rows Stock.all

        on_edited do |row, stock|
          stock.save!
        end
      }
    }.show
  end
end
