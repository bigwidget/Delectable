class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to edit_user_path(@user)
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
    @first_visit = @user.first_visit
    @user.update_attribute(:first_visit, false) if @first_visit
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to about_path
    else
      @user = User.find(params[:id])
      render 'edit'
    end
  end
  
end
