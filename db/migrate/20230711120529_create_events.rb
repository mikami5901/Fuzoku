class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :category_one
      t.string :category_two

      t.timestamps
    end
  end
end
