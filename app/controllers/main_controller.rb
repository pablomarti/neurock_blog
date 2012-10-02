class MainController < ApplicationController

  def index
  	@posts = Post.limit(5).order("id DESC")
  end

  def post
  	@post = Post.find(params[:id])
  end

  def previous_posts(post_id)
  	@posts = Post.where("id < ?", post_id).order("id DESC").limit(5)
  end

  def next_posts(post_id)
  	posts_tmp = Post.where("id > ?", post_id).order("id ASC").limit(5)
  	@posts = []
  	posts_tmp.map{ |post|
  		@posts << post
  	}
  	@posts = @posts.reverse
  end

end
