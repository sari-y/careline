class CreateFacilities < ActiveRecord::Migration[6.1]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :post_code
      t.string :address
      t.string :open
      t.string :rent
      t.string :utility
      t.string :food
      t.string :daily
      t.text :explanation
      t.timestamps
    end
  end
end
