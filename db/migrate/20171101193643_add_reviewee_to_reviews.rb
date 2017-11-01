class AddRevieweeToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :reviewee, references: :users, index: true
    add_foreign_key :reviews, :users, column: :reviewee_id
  end
end
