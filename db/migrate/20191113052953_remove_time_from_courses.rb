class RemoveTimeFromCourses < ActiveRecord::Migration[5.2]
  def change
    remove_column :courses, :time, :date
  end
end
