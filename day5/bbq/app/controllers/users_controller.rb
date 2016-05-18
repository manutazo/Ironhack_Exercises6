class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show

  def show
    @user = User.find(params[:id])
    render 'user/show'
  end

def logout
  @user = user.destroy_user_session_path
end
end
