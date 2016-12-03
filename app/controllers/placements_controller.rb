class PlacementsController < ApplicationController
  before_action :set_placement, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:show]

  def show
  end

  def new
    @placement = Placement.new
  end

  def edit
  end

  def create
    @placement = Placement.new(placement_params)

    respond_to do |format|
      if @placement.save
        format.html { redirect_to @placement, notice: 'Placement was successfully created.' }
        format.json { render :show, status: :created, location: @placement }
      else
        format.html { render :new }
        format.json { render json: @placement.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @placement.update(placement_params)
        format.html { redirect_to @placement, notice: 'Placement was successfully updated.' }
        format.json { render :show, status: :ok, location: @placement }
      else
        format.html { render :edit }
        format.json { render json: @placement.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @placement.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Placement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_placement
      @placement = Placement.find(params[:id])
    end

    def placement_params
      params.require(:placement).permit(:title, :description, :photo, :price, :address)
    end
end
