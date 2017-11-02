class Changecolumntype < ActiveRecord::Migration[5.1]
  def change
    change_column :friends,:reminder,:integer
  end
end
