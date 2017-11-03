class AddWasSavedToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :was_saved, :boolean, default: false
  end
end
