class RemoveColumnOnReviewsTwo < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :index_restaurants_on_review_id
  end
end
