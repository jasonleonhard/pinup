class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @pin = Pin.find(params[:pin_id])                  # find pin by id that comment is attached to and saved into variable
    @pin.user = current_user
    @comment = @pin.comments.create(comment_params)   # create and save comment 
    redirect_to pin_path(@pin)                        # redirect, display other comments associated with it

    # @comment = Comment.new(comment_params)

    # respond_to do |format|
    #   if @comment.save
    #     format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
    #     format.json { render :show, status: :created, location: @comment }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @pin = Pin.find(params[:pin_id])                  # find pin by id that comment is attached to and saved into variable
    # @comment = @pin.comments.find(comment_params)
#     @comment = @pin.comments.find(params[:id])
    @comment.destroy
    # respond_to do |format|
    #   format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
    redirect_to pin_path(@pin)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:user_name, :body, :idea_id, :id)
    end
end
