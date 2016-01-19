class CreatePrototypeImages < ActiveRecord::Migration
  def change
    create_table :prototype_images do |t|
      t.integer   :prototype_id
      t.text      :prototype_images
      t.integer   :status

      t.timestamps null: false
    end
  end
end
