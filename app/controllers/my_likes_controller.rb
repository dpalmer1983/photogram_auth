class MylikesController < ApplicationController
  def index
    @likes = Like.all
    @mylikes = @likes.where(:user_id => current_user.id)

    render("likes/index.html.erb")
  end

  def create
    @like = Like.new

    @like.photo_id = params[:photo_id]
    @like.user_id = params[:user_id]

    save_status = @like.save

    if save_status == true
      redirect_to("/photos", :notice => "Like created successfully.")
    else
      render("likes/new.html.erb")
    end
  end

end
