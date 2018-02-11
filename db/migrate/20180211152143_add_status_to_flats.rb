class AddStatusToFlats < ActiveRecord::Migration[5.1]
  def change
        add_column :flats, :status, :string
  end
end
