class Dish < ActiveRecord::Base
  belongs_to :cuisine
  has_many :favorites
  has_many :users, :through => :favorites
  has_many :venues, :through => :favorites

  validates :name, :presence => true, :uniqueness => true
end
