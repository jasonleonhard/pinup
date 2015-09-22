class PinsController < ApplicationController
  # only use find_pin for the following:
  before_action :find_pin, only: [:show, :edit, :update, :destroy]

  # show all pins (index.html.haml)
  def index
  end

  # view 1 pin by params
  def show
  end

  # create 1 new pin renders _form.html.haml
  def new
    @pin = Pin.new
  end

  # if able to save, renders notice, else renders new (aka _form)
  def create
    @pin = Pin.new(pin_params)

    if @pin.save
      redirect_to @pin, notice: "Created new Pin!"
    else
      render 'new'
    end
  end

  private
  
  # required params as well as permitted, used in create
  def pin_params
    params.require(:pin).permit(:title, :description)
  end

  # for show above
  def find_pin
    @pin = Pin.find(params[:id])
  end

end
