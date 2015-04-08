class AddUserIdToPoses < ActiveRecord::Migration
  def change
    add_column :poses, :user_id, :integer
  end
end
