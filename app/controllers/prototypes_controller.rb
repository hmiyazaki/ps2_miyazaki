class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
    @prototype.prototype_images.build
    3.times{@prototype.tags.build}
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
      prototype_images_attributes:[:prototype_image, :status],
      tags_attributes:[:tag_name]
      ).merge(user_id: current_user.id)
  end
end
