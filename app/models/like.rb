class Like < ApplicationRecord
  belongs_to :author, foreign_key: :user_id, class_name: 'User'
  belongs_to :post
  def updateLikesCounter
    self.post.increment!(:likes_counter)
  end
end
