class PagesController < ApplicationController
  before_action :authenticate_user!, only: [
    :inside
  ]

  def home
    @post = Post.new
  end

  def inside
  end

  def new
    @post = Post.new
  end
  
  def posts
    @posts = Post.published.page(params[:page]).per(10)
  end
  
  def show_post
    @post = Post.friendly.find(params[:id])
  rescue
    redirect_to root_path
  end

  
end
