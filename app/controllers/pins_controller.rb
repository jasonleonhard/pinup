class PinsController < ApplicationController
  # only use find_pin for the following:
  before_action :find_pin, only: [:show, :edit, :update, :destroy]

  # show all pins (index.html.haml)
  def index
    # define each method to show all pins in index
    # will render a link on index with the title of the pin
    @pins = Pin.all.order("created_at DESC")
  end

  # view 1 pin by params
  def show
  end

  # create 1 new pin renders _form.html.haml
  def new
    # @pin = Pin.new
    # devise version
    @pin = current_user.pins.build
  end

  # if able to save, renders notice, else renders new (aka _form)
  def create
    # @pin = Pin.new(pin_params)
    # devise version
    @pin = current_user.pins.build(pin_params)
    # create redirects back to pin root, aka index
    if @pin.save
      redirect_to @pin, notice: "Created new Pin!"
    else
      render 'new'
    end
  end

  # renders _form
  def edit
  end
  
  # before_action covers this, finds pin before
  def update
    # update redirects back to pin root on success, aka index
    if @pin.update(pin_params)
      redirect_to @pin, notice: "Updated Pin!"
    # or renders edit, aka _form
    else
      render 'edit'
    end
  end
  
  # before action finds correct pin in all of these (show edit update and destroy)
  def destroy
    @pin.destroy
    redirect_to root_path
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
