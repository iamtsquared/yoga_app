class CreatePosesSequences < ActiveRecord::Migration
  def change
    create_table :poses_sequences do |t|
      t.integer :pose_id
      t.integer :sequence_id

      t.timestamps null: false
    end
  end
end
