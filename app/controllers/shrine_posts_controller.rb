class ShrinePostsController < ApplicationController
  before_action :set_shrine_post, only: [:show, :edit, :update, :destroy]

  def index
    @shrine_posts = ShrinePost.all
  end

  def show
  end

  def new
    @shrine_post = ShrinePost.new
  end

  def edit
  end

  def create
    @shrine_post = ShrinePost.new(shrine_post_params)

    if @shrine_post.save
      redirect_to @shrine_post, notice: 'Shrine post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @shrine_post.update(shrine_post_params)
      redirect_to @shrine_post, notice: 'Shrine post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @shrine_post.destroy
    redirect_to shrine_posts_url, notice: 'Shrine post was successfully destroyed.'
  end

  private

  def set_shrine_post
    @shrine_post = ShrinePost.find(params[:id])
  end

  def shrine_post_params
    params.require(:shrine_post).permit(:title, :image, :description)
  end
end
