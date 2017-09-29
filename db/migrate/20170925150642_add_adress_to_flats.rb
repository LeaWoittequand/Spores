class AddAdressToFlats < ActiveRecord::Migration[5.1]
  def change
    add_column :flats, :address, :string
    add_column :flats, :city, :string
    add_column :flats, :postcode, :integer
    add_column :flats, :name, :string
  end
end
