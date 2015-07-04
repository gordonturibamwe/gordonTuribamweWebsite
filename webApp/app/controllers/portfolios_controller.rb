class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @about_user = AboutUser.find_by(params[:id])
    @work = @about_user.works.find_by(params[:id])
    @portfolios = Portfolio.all
    @pixes = Pix.where.not(portfolio_id: nil)
    @grouped_pixes = @pixes.group_by {|p| p.portfolio_id}

  end

  def show
    @about_user = AboutUser.find_by(params[:id])
    @work = @about_user.works.find_by(params[:id])
    @portfolio = @work.portfolio
    @pixes = Pix.where(portfolio_id: @portfolio)
  end

  def new
    @about_user = AboutUser.find_by(params[:id])
    @work = Work.find_by(params[:id])
    @portfolio = @work.build_portfolio
  end

  def edit
    @about_user = AboutUser.find_by(params[:id])
    @work = Work.find_by(params[:id])
    @portfolio = set_portfolio
  end

  def create
    @about_user = AboutUser.find_by(params[:id])
    @work = Work.find_by(params[:id])
    @portfolio = @work.build_portfolio(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to about_user_work_portfolio_path(@about_user, @work, @portfolio), notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @about_user = AboutUser.find_by(params[:id])
    @work = @about_user.works.find_by(params[:id])
    
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to about_user_work_portfolio_path(@about_user, @work, @portfolio), notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @about_user = AboutUser.find(params[:id])
    @work = Work.find(params[:work_id])
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to about_user_work_portfolios_path(@about_user, @work), notice: 'Portfolio was successfully destroyed.' }
    end
  end

  private
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    def portfolio_params
      params.require(:portfolio).permit(:title, :when, :description, :link, :work_id)
    end
end
