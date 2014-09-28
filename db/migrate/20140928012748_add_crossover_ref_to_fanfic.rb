class AddCrossoverRefToFanfic < ActiveRecord::Migration
  def change
    add_reference :fanfics, :crossover, index: true
  end
end
