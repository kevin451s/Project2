class PhotosController < ApplicationController
  before_action :set_photo, only: [:destroy, :show, :edit, :update]
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end
  def create
    @photo = Photo.new(photo_params)
    @photo.user_id = session[:user_id]
    if @photo.save
      redirect_to photos_path
    else
      render :new
    end
  end

  def update
    if @photo.update_attributes(photo_params)
      redirect_to @photo
    else
      render :edit
    end
  end

  def destroy
    @photo.destroy
    redirect_to photos_path
  end
  private
  def photo_params
    params.require(:photo).permit(:description, :image)
  end
  def set_photo
    @photo = Photo.find(params[:id])
  end
end
