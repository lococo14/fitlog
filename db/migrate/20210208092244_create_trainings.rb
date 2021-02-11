class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.integer   :weight_kg,  null: false
      t.integer   :weight_lb,  null: false 
      t.integer   :rep,        null: false
      t.integer   :set_number, null: false 
      t.references :log,   null: false, foreign_key: true
      t.string     :training,  null:false
      t.timestamps
    end
  end
end
