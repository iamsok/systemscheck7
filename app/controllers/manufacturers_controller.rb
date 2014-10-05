class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:id])
    @cars = Car.all
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)
      if @manufacturer.save
        flash[:notice] = 'Car was successfully added!'
        redirect_to manufacturers_path
      else
        flash[:notice] = 'Please fill in required information'
        render :new
      end
  end

  private
  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end
end


