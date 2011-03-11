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
  end

end
