class Crossover < ActiveRecord::Base
  has_many :fanfics_crossovers
  has_many :fanfics, through: :fanfics_crossovers
end
