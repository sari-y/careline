class CreateFacilities < ActiveRecord::Migration[6.1]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :post_code
      t.string :address
      t.date :open
      t.integer :rent
      t.integer :utility
      t.integer :food
      t.integer :daily
      t.text :explanation
      t.timestamps
    end
  end
end
