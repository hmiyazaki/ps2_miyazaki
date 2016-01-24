class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.integer   :user_id
      t.string    :catchcopy
      t.text      :concept
      t.string      :title

      t.timestamps null: false
    end
  end
end
