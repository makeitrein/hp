class RemoveCrossoverFromFanfic < ActiveRecord::Migration
  def change
    remove_column :fanfics, :crossover, :string
  end
end
