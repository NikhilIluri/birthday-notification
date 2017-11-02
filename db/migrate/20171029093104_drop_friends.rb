class DropFriends < ActiveRecord::Migration[5.1]
  def up
    drop_table :friends   
  end
end
