class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :namess
      t.string :typess
      t.string :sending
      t.date :entry
      t.date :gojapan
      t.string :levels
      t.integer :age
      t.string :workfeild

      t.timestamps null: false
    end
  end
end
