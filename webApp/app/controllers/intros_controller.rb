class IntrosController < ApplicationController
  before_action :set_intro, only: [:show, :edit, :update, :destroy]

  def index
    @home_user = HomeUser.find(params[:home_user_id])
  end

  def show
    @home_user = HomeUser.find(params[:home_user_id])
    @intro = @home_user.intro
  end

  def new
    @home_user = HomeUser.find(params[:home_user_id])
    @intro = @home_user.build_intro
  end

  def edit
    @home_user = HomeUser.find(params[:home_user_id])
    @intro = @home_user.intro(params[:id])
  end

  def create
    @home_user = HomeUser.find(params[:home_user_id])
    @intro = @home_user.build_intro(intro_params)

    respond_to do |format|
      if @intro.save
        format.html { redirect_to root_path, notice: 'Intro was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @home_user = HomeUser.find(params[:home_user_id])

    respond_to do |format|
      if @intro.update(intro_params)
        format.html { redirect_to home_user_path(@home_user), notice: 'Intro was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @home_user = HomeUser.find(params[:home_user_id])
    @intro.destroy
    respond_to do |format|
      format.html { redirect_to home_user_path(@home_user), notice: 'Intro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_intro
      @intro = Intro.find(params[:id])
    end

    def intro_params
      params.require(:intro).permit(:intro, :home_user_id)
    end
end
