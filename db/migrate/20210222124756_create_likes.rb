class CreateLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false
      t.integer :log_id, null: false

      t.timestamps

      t.index :user_id
      t.index :log_id
      t.index [:user_id, :log_id], unique: true
    end
  end
end
