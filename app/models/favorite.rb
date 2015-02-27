class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :dish
  belongs_to :venue

  validates :user, :presence => true
  validates :dish, :presence => true
  validates :venue, :presence => true
end
