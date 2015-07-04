class EducationsController < ApplicationController
  before_action :set_education, only: [:show, :edit, :update, :destroy]

  def index
    @educations = Education.all
  end

  def show
  end

  def new
    @about_user = AboutUser.find(params[:about_user_id])
    @education = @about_user.educations.build
  end

  def edit
    @about_user = AboutUser.find(params[:about_user_id])
    @education = @about_user.educations.find(params[:id])
  end

  def create
    @about_user = AboutUser.find(params[:about_user_id])
    @education = @about_user.educations.build(education_params)

    respond_to do |format|
      if @education.save
        format.html { redirect_to about_user_path(@about_user), notice: 'Education was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @about_user = AboutUser.find(params[:about_user_id])
    @education = @about_user.educations
    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to about_user_path(@about_user), notice: 'Education was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @about_user = AboutUser.find_by(params[:id])
    @education.destroy
    respond_to do |format|
      format.html { redirect_to about_user_path(@about_user), notice: 'Education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_education
      @education = Education.find(params[:id])
    end

    def education_params
      params.require(:education).permit(:title, :school, :schoolurl, :startdate, :enddate, :description, :about_user_id)
    end
end
