class CreateYoyakus < ActiveRecord::Migration[7.0]
  def change
    create_table :yoyakus do |t|
      t.integer :girl_id
      t.time :reserve_start
      t.time :reserve_finish

      t.timestamps
    end
  end
end
