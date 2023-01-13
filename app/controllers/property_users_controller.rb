class PropertyUsersController < ApplicationController
  before_action :set_property_user, only: %i[ show edit update destroy ]

  # GET /property_users
  def index
    @property_users = PropertyUser.all
  end

  # GET /property_users/1
  def show
  end

  # GET /property_users/new
  def new
    @property_user = PropertyUser.new
  end

  # GET /property_users/1/edit
  def edit
  end

  # POST /property_users
  def create
    @property_user = PropertyUser.new(property_user_params)

    if @property_user.save
      redirect_to @property_user, notice: "Property user was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /property_users/1
  def update
    if @property_user.update(property_user_params)
      redirect_to @property_user, notice: "Property user was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /property_users/1
  def destroy
    @property_user.destroy
    redirect_to property_users_url, notice: "Property user was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_user
      @property_user = PropertyUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_user_params
      params.require(:property_user).permit(:favorite, :closed, :contacted, :user_id, :property_id)
    end
end
