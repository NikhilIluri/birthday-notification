class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.string :mobile
      t.string :reminder
      t.boolean :call
      t.boolean :message
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
