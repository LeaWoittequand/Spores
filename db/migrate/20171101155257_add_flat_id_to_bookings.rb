class AddFlatIdToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :flat_id, :integer
  end
end
