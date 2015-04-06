class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :filename
      t.text :caption
      t.references :pose, index: true

      t.timestamps null: false
    end
    add_foreign_key :photos, :poses
  end
end
