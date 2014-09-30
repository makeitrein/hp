class Review < ActiveRecord::Base
  belongs_to :fanfic
  belongs_to :user
end
