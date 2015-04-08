class AddImageToPoses < ActiveRecord::Migration
  def change
    add_column :poses, :image, :string
  end
end
