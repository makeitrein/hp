class Character < ActiveRecord::Base
  has_many :fanfic_characters
  has_many :fanfics, through: :fanfic_characters
end
