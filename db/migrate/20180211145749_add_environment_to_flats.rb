class AddEnvironmentToFlats < ActiveRecord::Migration[5.1]
  def change
    add_column :flats, :environment, :string
  end
end
