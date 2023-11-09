class CreateInformation < ActiveRecord::Migration[6.1]
  def change
    create_table :information do |t|
      t.string :campany_name
      t.string :name
      t.string :phone_number
      t.string :post_code
      t.string :address
      t.string :email
      t.date :establishment_date
      t.integer :capital
      t.string :business_content
      t.timestamps
    end
  end
end
