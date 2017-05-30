class UsersController < ApplicationController

  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])

    render("users/show.html.erb")
  end

  def sign_in
    @user = User.all

    render("users/sign_in.html.erb")
  end

  def create
    @user = User.new

    @user.email = params[:email]
    @user.username = params[:username]
    @user.password = params[:password]

    save_status = @user.save

    if save_status == true
      redirect_to("/users/#{@user.id}", :notice => "User created successfully.")
    else
      render("users/sign_up.html.erb")
    end
  end

  def edit
    @user = User.find(params[:id])

    render("users/edit.html.erb")
  end

  def update
    @user = User.find(params[:id])

    @user.email = params[:email]
    @user.username = params[:username]
    @user.password = params[:password]

    save_status = @user.save

    if save_status == true
      redirect_to("/users/#{@user.id}", :notice => "User updated successfully.")
    else
      render("users/edit.html.erb")
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    if URI(request.referer).path == "/users/#{@user.id}"
      redirect_to("/", :notice => "User deleted.")
    else
      redirect_to(:back, :notice => "User deleted.")
    end
  end
end
