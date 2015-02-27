class Venue < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :favorites
  has_many :dishes, :through => :favorites

  validates :name, :presence => true, :uniqueness => { :scope => :address }
end
