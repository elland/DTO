class Favorite < ActiveRecord::Base
  attr_accessible :user, :comic
  belongs_to :user
  validates_presence_of :comic, :user
end
