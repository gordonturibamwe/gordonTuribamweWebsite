class PixesController < ApplicationController
  before_action :set_pix, only: [:show, :edit, :update, :destroy]

  def index
    @pixes = Pix.all
  end

  def show
  end

  def new
    @home_user = HomeUser.find(params[:home_user_id])
    @pix = @home_user.build_pix
  end

  def edit
    @home_user = HomeUser.find(params[:home_user_id])
    @pix = @home_user.pix(params[:id])
  end

  def create
    @home_user = HomeUser.find(params[:home_user_id])
    @pix = @home_user.build_pix(pix_params)

    respond_to do |format|
      if @pix.save
        format.html { redirect_to home_user_path(@home_user), notice: 'Pix was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @home_user = HomeUser.find(params[:home_user_id])
    respond_to do |format|
      if @pix.update(pix_params)
        format.html { redirect_to home_user_path(@home_user), notice: 'Pix was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @home_user = HomeUser.find(params[:home_user_id])
    @pix.destroy
    respond_to do |format|
      format.html { redirect_to home_user_path(@home_user), notice: 'Pix was successfully destroyed.' }
    end
  end

  private
    def set_pix
      @pix = Pix.find(params[:id])
    end

    def pix_params
      params.require(:pix).permit(:name, :caption, :home_user_id, :image)
    end
end
