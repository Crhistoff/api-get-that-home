class PropertyUsersController < ApplicationController
  before_action :set_property_user, only: %i[update destroy]
  before_action :authorized, only: %i[create update destroy]
  def index
    @property_users = PropertyUser.all
    render json: @property_users
  end

  def create
    @property_user_new = PropertyUser.create(property_user_params)
    if @property_user_new.valid?
      render json: @property_user_new, status: :created
    else
      render json: @property_users_new.errors, status: :unprocessable_entity
    end
  end

  def update
    if @property_user.update(property_user_params)
      render json: @property_user
    else
      render json: @property_user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @property_user.destroy
  end

  private

  def set_property_user
    @property_user = PropertyUser.find(params[:id])
  end

  def property_user_params
    params.require(:property_user).permit(:favorite, :closed, :contacted, :user_id, :property_id)
  end
end