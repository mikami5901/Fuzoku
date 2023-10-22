class CreateRyokins < ActiveRecord::Migration[7.0]
  def change
    create_table :ryokins do |t|
      t.integer :course
      t.integer :punn

      t.timestamps
    end
  end
end
