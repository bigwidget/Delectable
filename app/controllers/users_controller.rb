class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        format.html{ render :action => :edit } 
      else
        format.html{ render :action => :new }
      end
    end
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
