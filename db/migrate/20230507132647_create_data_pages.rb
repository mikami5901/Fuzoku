class CreateDataPages < ActiveRecord::Migration[7.0]
  def change
    create_table :data_pages do |t|
      t.text :data

      t.timestamps
    end
  end
end
