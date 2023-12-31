class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :login
      t.date :birthday
      t.string :address
      t.string :message

      t.timestamps
    end
  end
end
