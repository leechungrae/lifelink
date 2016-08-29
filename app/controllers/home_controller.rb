class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:user,:company]
  def index
  end
  def about
  end
  def user
  	@posts =Post.all
  end
  def write
  	post = Post.new
    post.user = current_user
  	post.bucket = params[:bucket]

  	post.save
  	redirect_to "/user"
  end
  def update_view
    @one_post =Post.find(params[:post_id])
  end
  def siljae_update
    @one_post =Post.find(params[:post_id])
    @one_post.bucket = params[:bucket]
    @one_post.save

    redirect_to "/user"
  end
  def destroy
    @one_post =Post.find(params[:post_id])
    @one_post.destroy

    redirect_to "/user"
  end

  def company
    @posts =Post.all
  end
end
