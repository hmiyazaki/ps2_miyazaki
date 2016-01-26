class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
    @prototype.prototype_images.build
  end

  def create
    Prototype.create(create_params)
    redirect_to "/"
  end

  private
  def create_params
    params.require(:prototype).permit(
      :title,
      :catchcopy,
      :concept,
      prototype_images_attributes:[:prototype_image, :status, :image]
      ).merge(user_id: current_user.id, tag_list: params[:prototype][:tag])
  end
end
