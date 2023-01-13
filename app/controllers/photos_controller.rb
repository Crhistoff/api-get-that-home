class PhotosController < ApplicationController
  before_action :set_photo, only: %i[update show destroy]
  before_action :authorized, only: %i[create update destroy]
  def index
    @photos = Photo.all
    render json: @photos
  end

  # POST /properties
  def create
    photo = Cloudinary::Uploader.upload(params[:image])
    photo_name = params[:name]
    property_id = params[:property_id]
    @photo_new = Photo.create(name: photo_name, url: photo['url'], property_id: property_id)
    if @photo_new.valid?
      render json: @photo_new, status: :created
    else
      render json: @photo_new.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /properties/id
  def update
    if @photo.update(photo_params)
      render json: @photo
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  # GET /properties/id
  def show
    render json: @photo
  end

  # DELETE /properties/id
  def destroy
    @photo.destroy
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:name, :url, :property_id)
  end
end