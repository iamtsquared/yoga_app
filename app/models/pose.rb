class Pose < ActiveRecord::Base
  has_and_belongs_to_many :sequences
  belongs_to :user
end
