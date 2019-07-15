class CarrierwavePostsController < ApplicationController
  before_action :set_carrierwave_post, only: [:show, :edit, :update, :destroy]

  def index
    @carrierwave_posts = CarrierwavePost.all
  end

  def show
  end

  def new
    @carrierwave_post = CarrierwavePost.new
  end

  def edit
  end

  def create
    @carrierwave_post = CarrierwavePost.new(carrierwave_post_params)

    if @carrierwave_post.save
      redirect_to @carrierwave_post, notice: 'Carrierwave post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @carrierwave_post.update(carrierwave_post_params)
      redirect_to @carrierwave_post, notice: 'Carrierwave post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @carrierwave_post.destroy
    redirect_to carrierwave_posts_url, notice: 'Carrierwave post was successfully destroyed.'
  end

  private
  
  def set_carrierwave_post
    @carrierwave_post = CarrierwavePost.find(params[:id])
  end

  def carrierwave_post_params
    params.require(:carrierwave_post).permit(:title, :image, :description)
  end
end
