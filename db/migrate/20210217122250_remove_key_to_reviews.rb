class RemoveKeyToReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :review, :integer
  end
end
