class PrototypesController < ApplicationController
  def new
    @prototype = Prototype.new
    3.times{@prototype.tags.build}
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
      prototype_images_attributes:[:prototype_image, :status],
      tags_attributes:[:tag_name]
      )
  end
end
