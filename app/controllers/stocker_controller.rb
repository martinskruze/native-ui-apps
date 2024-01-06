# frozen_string_literal: true

class StockerController
  def self.run
    window("Stocker", 400, 400) {
      table(:editable) {
        text_column('Ticker')
        text_column('Name')

        cell_rows Stock.pluck(:ticker, :name)
      }
    }.show
  end
end
