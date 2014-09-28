class FanficCharacter < ActiveRecord::Base
  belongs_to :fanfic
  belongs_to :character
end
