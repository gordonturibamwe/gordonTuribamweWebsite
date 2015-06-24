class ButtonsController < ApplicationController
  before_action :set_button, only: [:show, :edit, :update, :destroy]

  def index
    @home_user = HomeUser.find(params[:home_user_id])
    @buttons = @home_user.buttons
  end

  def show
  end

  def new
    @home_user = HomeUser.find(params[:home_user_id])
    @button = @home_user.buttons.build
  end

  def edit
    @home_user = HomeUser.find(params[:home_user_id])
    @intro = @home_user.buttons(params[:id])
  end

  def create
    @home_user = HomeUser.find(params[:home_user_id])
    @button = @home_user.buttons.build(button_params)

    respond_to do |format|
      if @button.save
        format.html { redirect_to home_user_path(@home_user), notice: 'Button was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @home_user = HomeUser.find(params[:home_user_id])
    respond_to do |format|
      if @button.update(button_params)
        format.html { redirect_to home_user_path(@home_user), notice: 'Button was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @home_user = HomeUser.find(params[:home_user_id])
    @button.destroy
    respond_to do |format|
      format.html { redirect_to home_user_path(@home_user), notice: 'Button was successfully destroyed.' }
    end
  end

  private
    def set_button
      @button = Button.find(params[:id])
    end

    def button_params
      params.require(:button).permit(:name, :url, :home_user_id)
    end
end
