class PosesSequence < ActiveRecord::Base
	has_many :poses
	has_many :sequences
end
