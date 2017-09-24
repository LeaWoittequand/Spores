class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
