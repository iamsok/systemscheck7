class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(car_params)
      if @car.save
        flash[:notice] = 'Car was successfully added!'
        redirect_to manufacturers_path
      else
        flash[:notice] = 'Please fill in required information'
        render :new
      end
  end


  private
  def car_params
    params.require(:car).permit(:name, :description, :color, :year, :mileage, :manufacturer_id)
  end
end
