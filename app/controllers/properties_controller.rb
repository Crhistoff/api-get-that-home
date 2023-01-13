class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show update destroy]
  before_action :authorized, only: %i[create update destroy]
  # GET /properties
  def index
    @properties = Property.all
    render json: @properties
  end

  # GET /properties/:id
  def show
    render json: { property: @property, photos: @property.photos }
  end

  # POST /properties
  def create
    @property_new = Property.create(property_params)
    if @property_new.valid?
      render json: @property_new, status: :created
    else
      render json: @property_new.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /properties/id
  def update
    if @property.update(property_params)
      render json: @property
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /properties/id
  def destroy
    @property.destroy
  end

  private
  
  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:name, :operation_type, :address, :phone, :price, :property_type, :bedrooms,
                                     :bathrooms, :area, :pets, :description, :lng, :lat)
  end
end

