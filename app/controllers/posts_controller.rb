class PostsController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

end
