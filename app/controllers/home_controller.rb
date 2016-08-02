class HomeController < ApplicationController
  def index
  end
  def about
  end
  def user
  	@posts =Post.all
  end
  def write
  	post = Post.new
  	post.bucket = params[:bucket]

  	post.save
  	redirect_to "/user"
  end
  def company
    @posts =Post.all
  end
end
