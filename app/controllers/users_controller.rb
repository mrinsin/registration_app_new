class UsersController < ApplicationController

  def index
  end

  def register
    @user = User.new(user_id: params[:user_id], password: params[:password])
    if @user.save
      render :confirmation
    else
      render text: 'Registration failed'
    end

  end

  def login
  end

  def confirmation
  end

  # def hello
  #   @current_user = cookies[:user]
  #
  #
  # end

end
