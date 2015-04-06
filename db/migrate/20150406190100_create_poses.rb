class CreatePoses < ActiveRecord::Migration
  def change
    create_table :poses do |t|
      t.string :name
      t.text :description
      t.references :sequence, index: true

      t.timestamps null: false
    end
    add_foreign_key :poses, :sequences
  end
end
