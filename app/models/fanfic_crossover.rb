class FanficCrossover < ActiveRecord::Base
  belongs_to :fanfic
  belongs_to :crossover
end
