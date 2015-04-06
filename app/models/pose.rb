class Pose < ActiveRecord::Base
  belongs_to :sequence
  has_many :photos
end
