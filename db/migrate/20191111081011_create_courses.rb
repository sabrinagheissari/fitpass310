class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.date :time
      t.integer :duration
      t.integer :price
      t.integer :capacity
      t.string :difficulty
      t.string :teacher_name
      t.references :studio, foreign_key: true

      t.timestamps
    end
  end
end
