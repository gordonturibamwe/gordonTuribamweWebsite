class HomeUsersController < ApplicationController
  before_action :set_home_user, only: [:show, :edit, :update, :destroy]

  # GET /home_users
  # GET /home_users.json
  def index
    @home_users = HomeUser.all
  end

  # GET /home_users/1
  # GET /home_users/1.json
  def show
    @home_user = set_home_user
    @intro = @home_user.intro
    @buttons = @home_user.buttons
    @pix = @home_user.pix
  end

  # GET /home_users/new
  def new
    @home_user = HomeUser.new
  end

  # GET /home_users/1/edit
  def edit
    # @home_user = HomeUser.find(params[:id])
    # @intro = @home_user.build_intro
  end

  # POST /home_users
  # POST /home_users.json
  def create
    @home_user = HomeUser.new(home_user_params)

    respond_to do |format|
      if @home_user.save
        format.html { redirect_to new_home_user_path(@home_user), notice: 'Home user was successfully created.' }
        format.json { render :show, status: :created, location: @home_user }
      else
        format.html { render :new }
        format.json { render json: @home_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_users/1
  # PATCH/PUT /home_users/1.json
  def update
    respond_to do |format|
      if @home_user.update(home_user_params)
        format.html { redirect_to home_user_path(@home_user), notice: 'Home user was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /home_users/1
  # DELETE /home_users/1.json
  def destroy
    @home_user.destroy
    respond_to do |format|
      format.html { redirect_to home_users_url, notice: 'Home user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_user
      @home_user = HomeUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_user_params
      params.require(:home_user).permit(:name)
    end
end
