class AboutUsersController < ApplicationController
  before_action :set_about_user, only: [:show, :edit, :update, :destroy]

  def index
    @about_users = AboutUser.all
  end

  def show
    @about_user = set_about_user
    @contact = @about_user.contact
    @works = @about_user.works
    @educations = @about_user.educations
    @skill = @about_user.skill
  end

  def new
    @about_user = AboutUser.new
  end

  def edit
  end

  def create
    @about_user = AboutUser.new(about_user_params)

    respond_to do |format|
      if @about_user.save
        format.html { redirect_to about_user_path(@about_user), notice: 'About user was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @about_user.update(about_user_params)
        format.html { redirect_to about_user_path(@about_user), notice: 'About user was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @about_user.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'About user was successfully destroyed.' }
    end
  end

  private
    def set_about_user
      @about_user = AboutUser.find(params[:id])
    end

    def about_user_params
      params.require(:about_user).permit(:name)
    end
end
