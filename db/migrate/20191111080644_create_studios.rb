class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :category

      t.timestamps
    end
  end
end
