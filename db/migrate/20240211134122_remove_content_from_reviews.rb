class RemoveContentFromReviews < ActiveRecord::Migration[7.1]
  def change
    remove_column :reviews, :content, :text
  end
end
