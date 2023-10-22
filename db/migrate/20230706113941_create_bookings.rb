class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :girl_id
      t.datetime :reserve_start
      t.datetime :reserve_finish

      t.timestamps
    end
  end
end
