class AddColumusToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :organization, :string
    add_column :users, :profile, :text
    add_column :users, :works, :string
    add_column :users, :photo, :text
  end
end
