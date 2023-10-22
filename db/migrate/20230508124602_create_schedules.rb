class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.integer :girl_id
      t.date :work_day
      t.time :start_time
      t.time :finish_time

      t.timestamps
    end
  end
end
