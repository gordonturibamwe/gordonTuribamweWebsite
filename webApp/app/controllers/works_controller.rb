class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  def index
    @about_user = AboutUser.find(params[:about_user_id])
    @work = @about_user.works
  end

  def show
  end

  def new
    @about_user = AboutUser.find(params[:about_user_id])
    @work = @about_user.works.build
  end

  def edit
    @about_user = AboutUser.find(params[:about_user_id])
    @work = @about_user.works.find(params[:id])
  end

  def create
    @about_user = AboutUser.find(params[:about_user_id])
    @work = @about_user.works.build(work_params)

    respond_to do |format|
      if @work.save
        format.html { redirect_to about_user_path(@about_user), notice: 'Work was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @about_user = AboutUser.find(params[:about_user_id])
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to about_user_path(@about_user), notice: 'Work was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @about_user = AboutUser.find(params[:about_user_id])
    @work.destroy
    respond_to do |format|
      format.html { redirect_to about_user_path(@about_user), notice: 'Work was successfully destroyed.' }
    end
  end

  private
    def set_work
      @work = Work.find(params[:id])
    end

    def work_params
      params.require(:work).permit(:title, :start, :end, :description, :link, :company, :location, :about_user_id)
    end
end
