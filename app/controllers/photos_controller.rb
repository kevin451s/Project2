class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photos = Photo.find(params[:id])
  end

  def edit
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
    if @photo.update_attributes(garment_params)
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
