class ChangeColumnNamePrototypeImages < ActiveRecord::Migration
  def change
    remove_column :prototype_images, :prototype_images, :string
    add_column :prototype_images, :prototype_image, :string
  end
end
