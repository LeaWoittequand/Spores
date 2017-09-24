class CreateFlats < ActiveRecord::Migration[5.1]
  def change
    create_table :flats do |t|
      t.text :description
      t.string :picture
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
