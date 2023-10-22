class CreateOptionLists < ActiveRecord::Migration[7.0]
  def change
    create_table :option_lists do |t|
      t.string :option_name
      t.string :option_picture
      t.integer :option_price

      t.timestamps
    end
  end
end
