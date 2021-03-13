class CreateTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_relations do |t|
      t.references :log, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
   add_index :tag_relations, [:log_id,:tag_id],unique: true
  end
end
