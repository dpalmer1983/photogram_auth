class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def edit
    @user = User.find(params[:id])

    render("users/edit.html.erb")
  end


end
