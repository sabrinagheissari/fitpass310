class AddDescriptionToStudios < ActiveRecord::Migration[5.2]
  def change
    add_column :studios, :description, :text
  end
end
