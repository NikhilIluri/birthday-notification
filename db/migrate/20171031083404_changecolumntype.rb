class Changecolumntype < ActiveRecord::Migration[5.1]
  def change
    change_column :friends,:reminder,'integer USING CAST(column_name AS integer)'
  end
end
