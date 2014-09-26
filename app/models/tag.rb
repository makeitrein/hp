class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :taggings
  has_many :fanfics, through: :taggings
end
