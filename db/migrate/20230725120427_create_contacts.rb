class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.date :birthday
      t.integer :address
      t.string :mail
      t.string :message

      t.timestamps
    end
  end
end
