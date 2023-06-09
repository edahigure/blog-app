class Comment < ApplicationRecord
  belongs_to :author, foreign_key: :author_id, class_name: 'User'
  belongs_to :post, foreign_key: :post_id, class_name: 'Post'

  after_create :update_comments_counter

  validates :text, presence: true, length: { maximum: 250 }

  private

  def update_comments_counter
    post.increment!(:comments_counter)
  end
end
