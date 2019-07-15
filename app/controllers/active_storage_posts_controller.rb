class ActiveStoragePostsController < ApplicationController
  before_action :set_active_storage_post, only: [:show, :edit, :update, :destroy]

  def index
    @active_storage_posts = ActiveStoragePost.all
  end

  def show
  end

  def new
    @active_storage_post = ActiveStoragePost.new
  end

  # GET /active_storage_posts/1/edit
  def edit
  end

  def create
    @active_storage_post = ActiveStoragePost.new(active_storage_post_params)

    if @active_storage_post.save
      redirect_to @active_storage_post, notice: 'Active storage post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @active_storage_post.update(active_storage_post_params)
      redirect_to @active_storage_post, notice: 'Active storage post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @active_storage_post.destroy
    redirect_to active_storage_posts_url, notice: 'Active storage post was successfully destroyed.'
  end

  private
  def set_active_storage_post
    @active_storage_post = ActiveStoragePost.find(params[:id])
  end

  def active_storage_post_params
    params.require(:active_storage_post).permit(:title, :image, :description)
  end
end
