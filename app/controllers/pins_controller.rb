class PinsController < ApplicationController
  # only use find_pin for the following:
  before_action :find_pin, only: [:show, :edit, :update, :destroy, :upvote]
  before_action :authenticate_user!, except: [:index, :show] # must sign in before hearting pin, editing, destroying....
  # before_action :authorize_user!, except: [:index, :show]  # must have permissions to edit, delete, update, vote...

  # before_action :require_admin, only: [:new, :create]
  
  # show all pins (index.html.haml)
  def index
    # :q hash of all params user passes in with ransack
    # @search = Pin.search(params[:q]) 
    # # return array of pins
    # @pins = @search.result

  # turns out sunspot is NOT free in Production... will look for alternatives
  # # sunspot search instead of just standard index show all
  #   @search = Pin.search do
  #     fulltext params[:search]
  #   end
  #   # return array of pins
  #   @pins = @search.results
  #   # @pins = Pin.all.order("created_at DESC").paginate(page: params[:page], per_page: 7)

  # standard index 
    # define each method to show all pins in index
    # will render a link on index with the title of the pin
    # .paginate()
    # @pins = Pin.all.order("created_at DESC").paginate(page: params[:page], per_page: 7)
    @pins = Pin.all.order("created_at DESC").paginate(page: params[:page], per_page: 11)
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

  # renders edit.html.haml with _form, no need for defining more 
  def edit
    # @user = User.find(params[:id])

    # if @pin.save
    #   redirect_to @pin, notice: "Edited Pin!"
    # else
    #   render 'edit'
    # end
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
  
  # before action finds_pin correct pin in all of these (show edit update and destroy)
  def destroy
    @pin.destroy
    redirect_to root_path
  end

  # acts_as_votable
  def upvote
    @pin.upvote_by current_user
    redirect_to :back
    # redirect_to root_path
  end
  
  private
  
  # required params as well as permitted, used in create
  def pin_params
    params.require(:pin).permit(:title, :description, :image)
  end

  # for show above
  def find_pin
    @pin = Pin.find(params[:id])
  end

  # before_action
#   def authorize_user
# #     authenticate_or_request_with_http_digest do |username|
# #       USERS[username]
# #     end
#     # pin.authorized?(current_user)
#   end

  # if not authorized_user...
  # def permission_denied
  #   render :file => "public/401.html", :status => :unauthorized
  # end

end