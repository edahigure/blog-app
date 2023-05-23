# in app/controllers/posts_controller.rb
class PostsController < ApplicationController
  def index
    # very simple code to grab all posts so they can be
    # displayed in the Index view (index.html.erb)
    # Post.all
  end

  def show
    # post=Post.find(params[:id])
    # puts user.seleted_posts
    # very simple code to grab the proper Post so it can be
    # displayed in the Show view (show.html.erb)
  end
end
