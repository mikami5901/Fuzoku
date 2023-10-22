class CreateReserves < ActiveRecord::Migration[7.0]
  def change
    create_table :reserves do |t|
      t.integer :girl_id
      t.integer :schedule_id
      t.time :reserve_start
      t.time :reserve_finish

      t.timestamps
    end
  end
end
