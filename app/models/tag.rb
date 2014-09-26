class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :fanfics, through: :taggings
end
