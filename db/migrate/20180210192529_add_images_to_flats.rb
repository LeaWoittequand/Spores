class AddImagesToFlats < ActiveRecord::Migration[5.1]
  def change
    add_column :flats, :portfolio1, :string
    add_column :flats, :portfolio2, :string
    add_column :flats, :portfolio3, :string
    add_column :flats, :portfolio4, :string
  end
end
