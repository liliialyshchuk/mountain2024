class PlacesController < ApplicationController
  before_action :set_place, only: %i[ show edit update destroy ]

  def index
    @places = Place.accessible_by(current_ability)
  end

  def show
    authorize! :read, @place
  end

  def new
    @place = Place.new
    authorize! :create, @place
  end

  def edit
    authorize! :edit, @place
  end

  def create
    @place = Place.new(place_params)
    @place = current_user.places.build(place_params)
    authorize! :create, @place

    respond_to do |format|
      if @place.save
        format.html { redirect_to place_url(@place), notice: "Place was successfully created." }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize! :edit, @place

    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to place_url(@place), notice: "Place was successfully updated." }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize! :destroy, @place

    @place.destroy!

    respond_to do |format|
      format.html { redirect_to places_url, notice: "Place was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_place
      @place = Place.find(params[:id])
    end

    def place_params
      params.require(:place).permit(:description, :preview_img)
    end
end
