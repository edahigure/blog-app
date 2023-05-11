class AddCommentCounterToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :comments_counter, :integer
    rename_column :likes, :user_id, :author_id
    rename_column :comments, :user_id, :author_id
    rename_column :posts, :user_id, :author_id
  end
end
