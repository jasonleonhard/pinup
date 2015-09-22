class PinsController < ApplicationController

  def index
    @pins = Pin.new
  end

  def create
    @pins = Pin.new(pin_params)
  end


  private

  def pin_params
    params.require(:pin).permit(:title, :description)
  end
end
