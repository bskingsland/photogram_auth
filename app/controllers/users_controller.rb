class UsersController < ApplicationController
  def index
    @users = User.all
    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    render("users/show.html.erb")
  end

  def mylikes
    render("users/my_likes.html.erb")
  end

end
