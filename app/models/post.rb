class Post < ApplicationRecord
  belongs_to :author, foreign_key: :user_id, class_name: 'User'
  has_many :comments
  has_many :likes
  def updatePostsCounter
    self.author.increment!(:posts_counter)
  end

  def recentComments
    self.comments.where(user_id:self.id).limit(5).order(created_at: :desc)
  end
end
