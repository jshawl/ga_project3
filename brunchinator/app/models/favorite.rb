class Favorite < ActiveRecord::Base
  belongs_to :user
  #has_many :brunches
  validates :name, :presence => true
end
