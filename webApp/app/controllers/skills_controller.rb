class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  def index
    @skills = Skill.all
  end

  def show
  end

  def new
    @about_user = AboutUser.find(params[:about_user_id])
    @skill = @about_user.build_skill
  end

  def edit
    @about_user = AboutUser.find(params[:about_user_id])
    @skill = @about_user.skill
  end

  def create
    @about_user = AboutUser.find(params[:about_user_id])
    @skill = @about_user.build_skill(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to about_user_path(@about_user), notice: 'Skill was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @about_user = AboutUser.find(params[:about_user_id])
    @skill = @about_user.skill

    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to about_user_path(@about_user), notice: 'Skill was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @about_user = AboutUser.find(params[:about_user_id])
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to about_user_path(@about_user), notice: 'Skill was successfully destroyed.' }
    end
  end

  private
    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:skills, :about_user_id)
    end
end
