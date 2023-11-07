class ChangeDatatypeJobIdOfReviews < ActiveRecord::Migration[7.0]
  def change
    change_column :girls, :tag_a, :string
    change_column :girls, :tag_b, :string
    change_column :girls, :tag_c, :string
    change_column :girls, :tag_d, :string
    
  end
end