class PixesController < ApplicationController
  before_action :set_pix, only: [:show, :edit, :update, :destroy]

  def index
    @pixes = Pix.all
  end

  def show
  end

  def new
    @p = params.has_key?(:home_user_id)
    if @p
      @home_user = HomeUser.find(params[:home_user_id])
      @pix = @home_user.build_pix
    else
      @about_user = AboutUser.find_by(params[:id])
      @work = Work.find_by(params[:id])
      @portfolio = Portfolio.find_by(params[:id])
      @pix = @portfolio.pixes.build
    end
  end

  # def new_portfolio
  #   @about_user = AboutUser.find(params[:id])
  #   @work = Work.find(params[:id])
  #   @portfolio = Portfolio.find(params[:id])
  #   # @pix = @portfolio.pixes.build
  # end

  def edit
    @home_user = HomeUser.find(params[:home_user_id])
    @pix = @home_user.pix(params[:id])
  end

  def create
    @p = params.has_key?(:home_user_id)
    if @p
      @home_user = HomeUser.find(params[:home_user_id])
      @pix = @home_user.build_pix(pix_params)

      respond_to do |format|
        if @pix.save
          format.html { redirect_to home_user_path(@home_user), notice: 'Pix was successfully created.' }
        else
          format.html { render :new }
        end
      end
      return
    else
      @about_user = AboutUser.find_by(params[:id])
      @work = Work.find_by(params[:id])
      @portfolio = Portfolio.find_by(params[:id])
      @pix = @portfolio.pixes.build(pix_params)

      respond_to do |format|
        if @pix.save
          format.html { redirect_to about_user_work_portfolio_path(@about_user, @work, @portfolio), notice: 'Pix was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end


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
      params.require(:pix).permit(:name, :caption, :home_user_id, :image, :portfolio_id)
    end
end
