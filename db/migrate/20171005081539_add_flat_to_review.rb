class AddFlatToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :flat_id, :integer
  end
end
