class Sequence < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :poses

  validates :name, presence: true
end
