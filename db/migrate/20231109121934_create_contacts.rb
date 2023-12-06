class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.boolean :group
      t.string :name
      t.string :name_kana
      t.boolean :sex
      t.string :age
      t.string :phone_number
      t.string :email
      t.text :requirements

      t.timestamps
    end
  end
end
