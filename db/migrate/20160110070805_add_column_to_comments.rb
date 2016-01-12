class AddColumnToComments < ActiveRecord::Migration
  def change
    add_column :comments, :user_id, :integer
    add_column :comments, :prototype_id, :integer
    add_column :comments, :commnet, :string
  end
end
