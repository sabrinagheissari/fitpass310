class AddTimeToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :time, :datetime
  end
end
