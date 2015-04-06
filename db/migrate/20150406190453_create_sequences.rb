class CreateSequences < ActiveRecord::Migration
  def change
    create_table :sequences do |t|
      t.string :name
      t.string :level
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :sequences, :users
  end
end
