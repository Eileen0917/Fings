class ThingsController < ApplicationController

  def index
    @things = Thing.all
  end

  def show
    @thing = Thing.find(params[:id])
  end

  def edit
    @places = Place.all
    @thing = Thing.find(params[:id])
  end

  def update
    @thing = Thing.find(params[:id])

    if @thing.update(thing_params)
      redirect_to @thing, notice: 'Thing was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @thing = Thing.find(params[:id])
    @thing.destroy
    redirect_to things_path, notice: 'Delete Successfully!'
  end

  def create
    @thing = Thing.new(thing_params)

    if @thing.save
      redirect_to @thing, notice: 'Place was successfully created.'
    else
      render :new
    end
  end

  def new
    @places = Place.all
    @thing = Thing.new
  end

  def thing_params
    params.require(:thing).permit(:name, :description, :quantity, :place_id)
  end
end