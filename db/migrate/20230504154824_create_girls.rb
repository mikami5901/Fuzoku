class CreateGirls < ActiveRecord::Migration[7.0]
  def change
    create_table :girls do |t|
      t.string :name
      t.integer :age
      t.integer :height
      t.integer :bust
      t.string :bust_cup
      t.integer :waist
      t.integer :hip
      t.string :girl_picture
      t.string :message
      t.integer :tag_a
      t.integer :tag_b
      t.integer :tag_c
      t.integer :tag_d
      t.integer :nomination_fee
      t.date :start_date
      t.boolean :experience
      t.integer :option_id

      t.timestamps
    end
  end
end
