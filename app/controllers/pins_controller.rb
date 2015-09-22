class PinsController < ApplicationController
  # show all pins
  def index
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
end
