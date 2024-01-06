class CreateInstitution < ActiveRecord::Migration[7.1]
  def change
    create_table :institutions do |t|
      t.string :title, null: false, comment: 'Title of insitution'
      t.timestamps
    end
  end
end
