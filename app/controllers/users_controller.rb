class UsersController < ApplicationController
  def update
    current_user.update(update_params)
    redirect_to "/users/edit"
  end

private
  def update_params
    params.require(:user).permit(:name, :organization, :profile, :works, :photo)
  end
end
