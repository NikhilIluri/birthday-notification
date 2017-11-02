class DropColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :friends, :users_id
    add_column :friends, :user_id, :integer
  end
end
