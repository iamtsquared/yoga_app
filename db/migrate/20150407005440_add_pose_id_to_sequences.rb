class AddPoseIdToSequences < ActiveRecord::Migration
  def change
    add_column :sequences, :pose_id, :integer
  end
end
