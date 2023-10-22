class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.integer :girl_id
      t.string :o_name
      t.string :o_picture
      t.integer :o_price

      t.timestamps
    end
  end
end
