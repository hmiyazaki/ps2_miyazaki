class AddIndexToPrototypeimages < ActiveRecord::Migration
  def change
    add_index :prototype_images, :prototype_id
  end
end
