class AddBaselineToFlats < ActiveRecord::Migration[5.1]
  def change
    add_column :flats, :baseline, :string
  end
end
