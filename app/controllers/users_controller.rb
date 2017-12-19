class UsersController < ApplicationController
  def index

  end

  def signup

  end

  def register
    User.create(
      email: params[:email],
      password: params[:password]
    )

    redirect_to '/'
  end

  def user_list
    @users = User.all
    render :list
  end
end
