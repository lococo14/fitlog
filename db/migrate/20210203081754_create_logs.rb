class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.references   :user, null: false, foreign_key: true 
      t.string       :title,  null: false
      t.integer      :day_id, null: false 
      t.timestamps
    end
  end
end
