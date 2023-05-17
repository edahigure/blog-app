class Comment < ApplicationRecord
  belongs_to :author, foreign_key: :user_id, class_name: 'User'
  belongs_to :post

  def updateCommentsCounter
    self.post.increment!(:comments_counter)
  end


end
