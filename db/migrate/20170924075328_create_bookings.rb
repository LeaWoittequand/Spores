class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.date :begin_date
      t.date :end_date
      t.string :member_of_people

      t.timestamps
    end
  end
end
