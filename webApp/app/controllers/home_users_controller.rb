class HomeUsersController < ApplicationController
  before_action :set_home_user, only: [:show, :edit, :update, :destroy]

  def index
    @home_users = HomeUser.all
  end

  def show
    @home_user = set_home_user
    @intro = @home_user.intro
    @buttons = @home_user.buttons
    @pix = @home_user.pix
  end

  def new
    @home_user = HomeUser.new
  end

  def edit
  end

  def create
    @home_user = HomeUser.new(home_user_params)

    respond_to do |format|
      if @home_user.save
        format.html { redirect_to home_user_path(@home_user), notice: 'Home user was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @home_user.update(home_user_params)
        format.html { redirect_to home_user_path(@home_user), notice: 'Home user was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @home_user.destroy
    respond_to do |format|
      format.html { redirect_to home_users_url, notice: 'Home user was successfully destroyed.' }
    end
  end

  private
    def set_home_user
      @home_user = HomeUser.find(params[:id])
    end

    def home_user_params
      params.require(:home_user).permit(:name)
    end
end
